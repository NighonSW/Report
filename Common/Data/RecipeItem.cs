using Common.Observable;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.Data
{
    public class RecipeItem : ViewModel
    {
        private RecipeData _recipeData;
        public RecipeData RecipeData
        {
            get => _recipeData;
            set => NotifiedSetField(ref _recipeData, value);
        }
    }
}
