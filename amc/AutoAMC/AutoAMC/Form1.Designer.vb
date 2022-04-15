<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally

            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Panel1 = New System.Windows.Forms.Panel
        Me.lblAJAX0 = New System.Windows.Forms.Label
        Me.cmdControl0 = New System.Windows.Forms.Button
        Me.lblAJAX = New System.Windows.Forms.Label
        Me.cmdControl = New System.Windows.Forms.Button
        Me.DataGridView1 = New System.Windows.Forms.DataGridView
        Me.Panel1.SuspendLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Timer1
        '
        Me.Timer1.Interval = 1000
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.lblAJAX0)
        Me.Panel1.Controls.Add(Me.cmdControl0)
        Me.Panel1.Controls.Add(Me.lblAJAX)
        Me.Panel1.Controls.Add(Me.cmdControl)
        Me.Panel1.Controls.Add(Me.DataGridView1)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(1000, 467)
        Me.Panel1.TabIndex = 0
        '
        'lblAJAX0
        '
        Me.lblAJAX0.AutoSize = True
        Me.lblAJAX0.Location = New System.Drawing.Point(287, 5)
        Me.lblAJAX0.Name = "lblAJAX0"
        Me.lblAJAX0.Size = New System.Drawing.Size(0, 13)
        Me.lblAJAX0.TabIndex = 2
        '
        'cmdControl0
        '
        Me.cmdControl0.Location = New System.Drawing.Point(81, 0)
        Me.cmdControl0.Name = "cmdControl0"
        Me.cmdControl0.Size = New System.Drawing.Size(75, 23)
        Me.cmdControl0.TabIndex = 2
        Me.cmdControl0.Text = "Stop.."
        Me.cmdControl0.UseVisualStyleBackColor = True
        '
        'lblAJAX
        '
        Me.lblAJAX.AutoSize = True
        Me.lblAJAX.Location = New System.Drawing.Point(170, 5)
        Me.lblAJAX.Name = "lblAJAX"
        Me.lblAJAX.Size = New System.Drawing.Size(0, 13)
        Me.lblAJAX.TabIndex = 1
        '
        'cmdControl
        '
        Me.cmdControl.Location = New System.Drawing.Point(0, 0)
        Me.cmdControl.Name = "cmdControl"
        Me.cmdControl.Size = New System.Drawing.Size(75, 23)
        Me.cmdControl.TabIndex = 1
        Me.cmdControl.Text = "Start.."
        Me.cmdControl.UseVisualStyleBackColor = True
        '
        'DataGridView1
        '
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Location = New System.Drawing.Point(0, 32)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.Size = New System.Drawing.Size(976, 425)
        Me.DataGridView1.TabIndex = 0
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1000, 467)
        Me.Controls.Add(Me.Panel1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents cmdControl As System.Windows.Forms.Button
    Friend WithEvents lblAJAX As System.Windows.Forms.Label
    Friend WithEvents lblAJAX0 As System.Windows.Forms.Label
    Friend WithEvents cmdControl0 As System.Windows.Forms.Button

End Class
