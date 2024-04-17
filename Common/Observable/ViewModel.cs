using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
//using System.Windows.Controls;
using System.Xml.Serialization;
using Common.Observable;

namespace Common.Observable
{
    [AttributeUsage(AttributeTargets.Field, AllowMultiple = false, Inherited = false)]
    public class AsPropertyAttribute : Attribute { }

    public class Properties
    {
        private readonly ViewModel viewModel;
        private readonly IReadOnlyDictionary<string, FieldInfo> members;

        public object this[string propertyName]
        {
            get => this.members.TryGetValue(propertyName, out FieldInfo fi) ? fi.GetValue(this.viewModel) : null;
            set
            {
                if (this.members.TryGetValue(propertyName, out FieldInfo fi))
                    fi.SetValue(this.viewModel, value);
                this.viewModel.NotifyPropertyChange();
            }
        }

        public Properties(ViewModel viewModel)
        {
            this.viewModel = viewModel;
            this.members = this.viewModel
                .GetType()
                .GetFields(BindingFlags.Instance | BindingFlags.NonPublic)
                .Where(t => t.CustomAttributes.Any(att => att.AttributeType == typeof(AsPropertyAttribute)))
                .ToDictionary(k => k.Name, v => v);
        }

        public void NotifyAllChanges() => this.viewModel.NotifyPropertyChange();
    }
    public class ViewModel : ObservableObject
    {
        // backing fields and properties to save messages for the user and to notify to the view that the request has been completed
        //private ValidationResult _validation;
        private string _statusMessage;
        private string _headerMessage;
        private bool _load = false;
        public event Action RequestComplete;
        public event Action RequestResize;

        private readonly Properties properties;
        public Properties Properties => properties;
        public void NotifyPropertyChange() => RaisePropertyChangedEvent(nameof(Properties));

        [XmlIgnore]
        //public ValidationResult Result
        //{
        //    get => _validation;
        //    set
        //    {
        //        NotifiedSetField(ref _validation, value);
        //        StatusMessage = value?.ErrorContent?.ToString();
        //    }
        //}

        public string StatusMessage
        {
            get => _statusMessage;
            set => NotifiedSetField(ref _statusMessage, value);
        }

        public string HeaderMessage
        {
            get => _headerMessage;
            set => NotifiedSetField(ref _headerMessage, value);
        }

        public void RaiseRequestComplete()
        {
            RequestComplete?.Invoke();
        }

        public void RaiseRequestResize()
        {
            RequestResize?.Invoke();
        }

        public void Load()
        {
            if (!_load)
            {
                Initialize();
                _load = true;
            }

            Reload();
            Refresh();
        }

        // override in order to use it
        // suggested method to use for one-time instructions which usually take place in constructor
        protected virtual void Initialize()
        {

        }

        // override in order to use it
        // suggested method to use for instructions which need to be repeated when other objects have updated their contents, like new, updated or deleted table records
        protected virtual void Reload()
        {

        }

        // override in order to use it
        // suggested method to use for instructions which need to update page content, like applying a filter
        protected virtual void Refresh()
        {

        }

        // override in order to use it
        // suggested method to use for instructions which occur when the view is unloaded
        public virtual void Unload()
        {

        }
    }
}
