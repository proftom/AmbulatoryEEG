﻿

#pragma checksum "C:\Users\Thomas\Desktop\C#\Scenario1.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "F15A3826E9F26913314409C2105EBF22"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BluetoothGattHeartRate
{
    partial class Scenario1 : global::SDKTemplate.Common.LayoutAwarePage, global::Windows.UI.Xaml.Markup.IComponentConnector
    {
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 4.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
 
        public void Connect(int connectionId, object target)
        {
            switch(connectionId)
            {
            case 1:
                #line 52 "..\..\Scenario1.xaml"
                ((global::Windows.UI.Xaml.Controls.Primitives.Selector)(target)).SelectionChanged += this.DevicesListBox_SelectionChanged;
                 #line default
                 #line hidden
                break;
            case 2:
                #line 69 "..\..\Scenario1.xaml"
                ((global::Windows.UI.Xaml.FrameworkElement)(target)).SizeChanged += this.outputDataChart_SizeChanged;
                 #line default
                 #line hidden
                break;
            case 3:
                #line 33 "..\..\Scenario1.xaml"
                ((global::Windows.UI.Xaml.Controls.Primitives.ButtonBase)(target)).Click += this.RunButton_Click;
                 #line default
                 #line hidden
                break;
            }
            this._contentLoaded = true;
        }
    }
}

