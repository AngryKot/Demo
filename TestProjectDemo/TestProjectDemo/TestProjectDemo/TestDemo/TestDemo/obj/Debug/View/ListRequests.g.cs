﻿#pragma checksum "..\..\..\View\ListRequests.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "6B2784CDC0D9C2B88813B8200D2B26217ABD996DEF7FCACCE810985B6DE021C0"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using TestDemo.View;


namespace TestDemo.View {
    
    
    /// <summary>
    /// ListRequests
    /// </summary>
    public partial class ListRequests : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 24 "..\..\..\View\ListRequests.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnExit;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\View\ListRequests.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dgRequest;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\View\ListRequests.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox tbSearchById;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\View\ListRequests.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbStatusFilter;
        
        #line default
        #line hidden
        
        
        #line 60 "..\..\..\View\ListRequests.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnCreateRequest;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\View\ListRequests.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnEditRequest;
        
        #line default
        #line hidden
        
        
        #line 62 "..\..\..\View\ListRequests.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnReport;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/TestDemo;component/view/listrequests.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\ListRequests.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.btnExit = ((System.Windows.Controls.Button)(target));
            
            #line 24 "..\..\..\View\ListRequests.xaml"
            this.btnExit.Click += new System.Windows.RoutedEventHandler(this.btnExit_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.dgRequest = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 3:
            this.tbSearchById = ((System.Windows.Controls.TextBox)(target));
            
            #line 52 "..\..\..\View\ListRequests.xaml"
            this.tbSearchById.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.tbSearchById_TextChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.cbStatusFilter = ((System.Windows.Controls.ComboBox)(target));
            
            #line 54 "..\..\..\View\ListRequests.xaml"
            this.cbStatusFilter.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cbStatusFilter_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.btnCreateRequest = ((System.Windows.Controls.Button)(target));
            
            #line 60 "..\..\..\View\ListRequests.xaml"
            this.btnCreateRequest.Click += new System.Windows.RoutedEventHandler(this.btnCreateRequest_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.btnEditRequest = ((System.Windows.Controls.Button)(target));
            
            #line 61 "..\..\..\View\ListRequests.xaml"
            this.btnEditRequest.Click += new System.Windows.RoutedEventHandler(this.btnEditRequest_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btnReport = ((System.Windows.Controls.Button)(target));
            
            #line 62 "..\..\..\View\ListRequests.xaml"
            this.btnReport.Click += new System.Windows.RoutedEventHandler(this.btnReport_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}
