using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Common.Observable
{
    public class ObservableObject : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public void RaisePropertyChangedEvent([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        // assigns value to a property backing field and raises the property changed event for binding
        public void NotifiedSetField<T>(ref T field, T value, [CallerMemberName] string name = null)
        {
            field = value;
            RaisePropertyChangedEvent(name);
        }
    }
}
