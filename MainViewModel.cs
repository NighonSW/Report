using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Threading.Tasks;
using Common;
using Common.Data;
using Common.Observable;
using CsvHelper;
using System.Globalization;
using System.Collections.ObjectModel;
using System.Windows.Input;
using Common.ViewModels;
using System.Text.Json;
using Common.CustomAttributes;


namespace Report
{

    public class MainViewModel : ViewModel
    {
        List<string> ListOfCurrentRecipeName;
        private readonly JsonSerializerOptions jsonOptions;

        //string FilePath = $@"C:\CommesseLocal\FonderieMora\EditRecipe\EditRecipe\AppData\record.csv";

        private string _filePathSelected;
        public string FilePathSelected
        {
            get => _filePathSelected;
            set
            { 
                NotifiedSetField(ref _filePathSelected, value);
                Main();
            }
        }

        private string _name;
        public string Name
        {
            get => _name;
            set
            {
                NotifiedSetField(ref _name, value);
            }
        }

        private ObservableCollection<RecipeItem> _recipeList;
        public ObservableCollection<RecipeItem> RecipeList
        {
            get => _recipeList;
            set => NotifiedSetField(ref _recipeList, value);
        }

        private int _selectedObjectIndex;
        public int SelectedObjectIndex
        {
            get => _selectedObjectIndex;
            set => NotifiedSetField(ref _selectedObjectIndex, value);
        }
        
        private RecipeData _recipe;
        public RecipeData Recipe
        {
            get => _recipe;
            set => NotifiedSetField(ref _recipe, value);
        }

        public MainViewModel()
        {
            ListOfCurrentRecipeName = new List<string>();
            RecipeList = new ObservableCollection<RecipeItem>();

            Recipe = new RecipeData(0);


            jsonOptions = new JsonSerializerOptions();
            jsonOptions.WriteIndented = true;
            //jsonOptions.Converters.Add(new JsonPropertyOrderConverter());
            //Main();
        }
        public ICommand CmdSave
        {
            get => new DelegateCommand(SaveICommand);
        }
        public ICommand CmdSaveNewRecipeName
        {
            get => new DelegateCommand(SaveNewRecipeName);
        }
        public ICommand CmdCopyName
        {
            get => new DelegateCommand(CopyName);
        }
        
        private void Main()
        {
            List<RecipeData> recipe = new List<RecipeData>();
            ListOfCurrentRecipeName.Clear();
            RecipeList.Clear();

            //ReadCsv();

            string recipepath = FilePathSelected; // + ".json";
            string jsonText = File.ReadAllText(recipepath);

            List<RecipeItem> Recipes = JsonSerializer.Deserialize<List<RecipeItem>>(jsonText);


        }
        private void SaveICommand()
        {
            RecipeData recipe = Recipe;
            string jsonText = JsonSerializer.Serialize(recipe, jsonOptions);
            File.WriteAllText($@"D:\{recipe.Name}" + ".json", jsonText);
        }
        public bool Save()
        {

            RecipeData recipe = Recipe;


            try
            {
                string jsonText = JsonSerializer.Serialize(recipe, jsonOptions);
                File.WriteAllText($@"D:\{recipe.Name}" + ".json", jsonText);
                return true;
            }
            catch
            {
                return false;
            }
        }

        private void ReadCsv()
        {
            using (var reader = new StreamReader($@"{FilePathSelected}"))
            {
                //while (!reader.EndOfStream)
                //{
                var FirstLine = reader.ReadLine();
                var valueFirst = FirstLine.Split();

                var SecondLine = reader.ReadLine();
                var valueSecond = SecondLine.Split();

                var ThirdLine = reader.ReadLine();
                ListOfCurrentRecipeName = ThirdLine.Split(';').OrderBy(q => q).ToList();
                //}

                for (int i = 0; i < ListOfCurrentRecipeName.Count; i++)
                {
                    RecipeList.Add(new RecipeItem() { RecipeData = new RecipeData(i) });

                    RecipeList[i].RecipeData.ActualRecipeName = ListOfCurrentRecipeName[i];
                }
                Console.WriteLine(RecipeList.Count.ToString());
            }
        }
        private void SaveNewRecipeName()
        {
            string path = FilePathSelected;
            string actualFile = string.Empty;
            string newFile = string.Empty;

            StringBuilder resultStringBuilder = new StringBuilder();

            using (var reader = new StreamReader($@"{ FilePathSelected }"))
            {
                actualFile = reader.ReadToEnd();
            }

            for (int i = 0; i < RecipeList.Count; i++)
            {
                if (RecipeList[i].RecipeData.NewRecipeName != null && RecipeList[i].RecipeData.NewRecipeName != "")
                {
                    newFile = actualFile.Replace(RecipeList[i].RecipeData.ActualRecipeName, RecipeList[i].RecipeData.NewRecipeName);

                    actualFile = newFile;
                }
            }

            FileStream fileStream = File.Open(path, FileMode.Open);

            /* 
                * Set the length of filestream to 0 and flush it to the physical file.
                *
                * Flushing the stream is important because this ensures that
                * the changes to the stream trickle down to the physical file.
                * 
                */
            fileStream.SetLength(0);
            fileStream.Close(); // This flushes the content, too.

            using (var csvStream = new StreamWriter(path, true, Encoding.UTF8))
            {
                csvStream.Write(newFile);

            }

            Main();

        }
        public void CopyName()
        {
            RecipeList[SelectedObjectIndex].RecipeData.NewRecipeName = RecipeList[SelectedObjectIndex].RecipeData.ActualRecipeName;
        }
    }   
}
