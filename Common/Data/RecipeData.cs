using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common.Observable;

namespace Common.Data
{
    public class RecipeData : ObservableObject
    {
        private int _index;
        public int Index
        {
            get => _index;
            set => NotifiedSetField(ref _index, value);
        }

        private string _name;
        public string Name
        {
            get => _name;
            set => NotifiedSetField(ref _name, value);
        }

        private string _actualRecipeName;
        public string ActualRecipeName
        {
            get => _actualRecipeName;
            set => NotifiedSetField(ref _actualRecipeName, value);
        }

        private string _newRecipeName;
        public string NewRecipeName
        {
            get => _newRecipeName;
            set => NotifiedSetField(ref _newRecipeName, value);
        }

        public RecipeData(int n)
        {
            Index = n;
        }

    }
}
