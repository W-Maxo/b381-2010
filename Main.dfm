object Form1: TForm1
  Left = 360
  Top = 197
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'B381 2010'
  ClientHeight = 639
  ClientWidth = 933
  Color = clBtnFace
  Constraints.MinHeight = 375
  Constraints.MinWidth = 554
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter0: TSplitter
    Left = 0
    Top = 170
    Width = 933
    Height = 5
    Cursor = crVSplit
    Align = alTop
    MinSize = 9
    OnCanResize = Splitter0CanResize
    OnMoved = Splitter0Moved
    ExplicitTop = 140
    ExplicitWidth = 782
  end
  object PanelT: TPanel
    Left = 0
    Top = 30
    Width = 933
    Height = 140
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object RzSplitter4: TRzSplitter
      Left = 0
      Top = 0
      Width = 933
      Height = 140
      Orientation = orVertical
      Position = 61
      Percent = 44
      UsePercent = True
      Align = alClient
      TabOrder = 0
      BarSize = (
        0
        61
        933
        65)
      UpperLeftControls = (
        ChartI)
      LowerRightControls = (
        ChartU)
      object ChartI: TChart
        Left = 0
        Top = 0
        Width = 933
        Height = 61
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Gradient.Direction = gdBottomTop
        BackWall.Gradient.EndColor = clWhite
        BackWall.Gradient.StartColor = 15395562
        BackWall.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        LeftWall.Color = 14745599
        Legend.Font.Name = 'Verdana'
        Legend.MaxNumRows = 0
        Legend.Visible = False
        MarginBottom = 3
        MarginLeft = 2
        MarginRight = 2
        MarginTop = 3
        RightWall.Color = 14745599
        SubFoot.Font.Name = 'Verdana'
        SubTitle.Font.Name = 'Verdana'
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        OnScroll = ChartIScroll
        OnUndoZoom = ChartIUndoZoom
        OnZoom = ChartIZoom
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.AxisValuesFormat = '0.#'
        BottomAxis.Grid.Color = 11119017
        BottomAxis.Labels = False
        BottomAxis.LabelsFont.Name = 'Verdana'
        BottomAxis.LabelsSeparation = 100
        BottomAxis.LabelStyle = talValue
        BottomAxis.Maximum = 5.000000000000000000
        BottomAxis.MinorTickCount = 4
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.TickOnLabelsOnly = False
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFont.Name = 'Verdana'
        DepthAxis.Maximum = 0.409999999999999900
        DepthAxis.Minimum = -0.590000000000000100
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Automatic = False
        DepthTopAxis.AutomaticMaximum = False
        DepthTopAxis.AutomaticMinimum = False
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFont.Name = 'Verdana'
        DepthTopAxis.Maximum = 0.409999999999999900
        DepthTopAxis.Minimum = -0.590000000000000100
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFont.Name = 'Verdana'
        LeftAxis.LabelsMultiLine = True
        LeftAxis.LabelsSize = 15
        LeftAxis.MaximumOffset = 1
        LeftAxis.MinimumOffset = 1
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFont.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        RightAxis.Visible = False
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFont.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        TopAxis.Visible = False
        View3D = False
        View3DWalls = False
        OnAfterDraw = ChartIAfterDraw
        OnBeforeDrawChart = VoltageChartBeforeDrawChart
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        OnDblClick = ChartIDblClick
        OnResize = ChartIResize
        ColorPaletteIndex = 13
        object UpDown17: TUpDown
          Left = 1
          Top = 13
          Width = 12
          Height = 21
          Min = -32000
          Max = 32000
          TabOrder = 0
          Wrap = True
          OnClick = UpDown17Click
        end
        object SeriesI: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          Title = 'SeriesI'
          LinePen.Color = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object ChartTool8: TAxisScrollTool
        end
      end
      object ChartU: TChart
        Left = 0
        Top = 0
        Width = 933
        Height = 75
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Brush.Gradient.Direction = gdBottomTop
        BackWall.Brush.Gradient.EndColor = clWhite
        BackWall.Brush.Gradient.StartColor = 15395562
        BackWall.Brush.Gradient.Visible = True
        BackWall.Gradient.Direction = gdBottomTop
        BackWall.Gradient.EndColor = clWhite
        BackWall.Gradient.StartColor = 15395562
        BackWall.Gradient.Visible = True
        BackWall.Transparent = False
        Foot.Font.Name = 'Verdana'
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = clWhite
        Gradient.MidColor = 15395562
        Gradient.StartColor = 15395562
        LeftWall.Color = 14745599
        Legend.Font.Name = 'Verdana'
        Legend.MaxNumRows = 0
        Legend.Visible = False
        MarginBottom = 3
        MarginLeft = 2
        MarginRight = 2
        MarginTop = 3
        RightWall.Color = 14745599
        SubFoot.Font.Name = 'Verdana'
        SubTitle.Font.Name = 'Verdana'
        Title.Font.Name = 'Verdana'
        Title.Text.Strings = (
          'TChart')
        Title.Visible = False
        OnScroll = ChartUScroll
        OnUndoZoom = ChartUUndoZoom
        OnZoom = ChartUZoom
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Axis.Color = 4210752
        BottomAxis.AxisValuesFormat = '0.#'
        BottomAxis.Grid.Color = 11119017
        BottomAxis.Grid.ZPosition = 1.000000000000000000
        BottomAxis.LabelsFont.Name = 'Verdana'
        BottomAxis.LabelsFont.Shadow.Smooth = False
        BottomAxis.LabelsFont.Shadow.Visible = False
        BottomAxis.LabelsSeparation = 100
        BottomAxis.LabelsSize = 12
        BottomAxis.Maximum = 5.000000000000000000
        BottomAxis.MinorTickCount = 5
        BottomAxis.TickLength = 2
        BottomAxis.TicksInner.Color = 11119017
        BottomAxis.Title.Font.Name = 'Verdana'
        DepthAxis.Axis.Color = 4210752
        DepthAxis.Grid.Color = 11119017
        DepthAxis.LabelsFont.Name = 'Verdana'
        DepthAxis.TicksInner.Color = 11119017
        DepthAxis.Title.Font.Name = 'Verdana'
        DepthTopAxis.Axis.Color = 4210752
        DepthTopAxis.Grid.Color = 11119017
        DepthTopAxis.LabelsFont.Name = 'Verdana'
        DepthTopAxis.TicksInner.Color = 11119017
        DepthTopAxis.Title.Font.Name = 'Verdana'
        LeftAxis.Axis.Color = 4210752
        LeftAxis.Grid.Color = 11119017
        LeftAxis.LabelsFont.Name = 'Verdana'
        LeftAxis.LabelsSize = 15
        LeftAxis.MaximumOffset = 1
        LeftAxis.MinimumOffset = 1
        LeftAxis.TicksInner.Color = 11119017
        LeftAxis.Title.Font.Name = 'Verdana'
        RightAxis.Axis.Color = 4210752
        RightAxis.Grid.Color = 11119017
        RightAxis.LabelsFont.Name = 'Verdana'
        RightAxis.TicksInner.Color = 11119017
        RightAxis.Title.Font.Name = 'Verdana'
        RightAxis.Visible = False
        TopAxis.Axis.Color = 4210752
        TopAxis.Grid.Color = 11119017
        TopAxis.LabelsFont.Name = 'Verdana'
        TopAxis.TicksInner.Color = 11119017
        TopAxis.Title.Font.Name = 'Verdana'
        TopAxis.Visible = False
        View3D = False
        View3DWalls = False
        OnAfterDraw = ChartIAfterDraw
        OnBeforeDrawChart = VoltageChartBeforeDrawChart
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        OnDblClick = ChartUDblClick
        OnResize = ChartUResize
        ColorPaletteIndex = 13
        object UpDown16: TUpDown
          Left = 1
          Top = 49
          Width = 21
          Height = 12
          Min = -32000
          Max = 32000
          Orientation = udHorizontal
          TabOrder = 0
          Wrap = True
          OnClick = UpDown16Click
        end
        object UpDown18: TUpDown
          Left = 0
          Top = 16
          Width = 12
          Height = 21
          Min = -32000
          Max = 32000
          TabOrder = 1
          Wrap = True
          OnClick = UpDown18Click
        end
        object SeriesU: TFastLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          SeriesColor = clBlue
          Title = 'SeriesU'
          LinePen.Color = clBlue
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object ChartTool9: TAxisScrollTool
        end
      end
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 175
    Width = 933
    Height = 464
    ActivePage = TabSheet1
    Align = alClient
    Images = ToolBarImageList
    ParentColor = False
    TabIndex = 0
    TabOrder = 1
    TabStyle = tsRoundCorners
    OnChange = RzPageControl1Change
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Instant, Ca&&CI Ch'
      object PanelB: TPanel
        Left = 0
        Top = 0
        Width = 929
        Height = 438
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 108
          Top = 0
          Height = 438
          ExplicitHeight = 442
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 108
          Height = 438
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          OnResize = Panel2Resize
          object Label1: TLabel
            Left = 13
            Top = 8
            Width = 7
            Height = 13
            Caption = 'A'
          end
          object Label2: TLabel
            Left = 10
            Top = 36
            Width = 13
            Height = 13
            Caption = 'dA'
          end
          object Label3: TLabel
            Left = 13
            Top = 59
            Width = 7
            Height = 13
            Caption = 'N'
          end
          object Edit1: TEdit
            Left = 32
            Top = 8
            Width = 65
            Height = 21
            TabOrder = 0
            OnChange = EditChange
            OnExit = Edit1Exit
          end
          object Edit2: TEdit
            Left = 32
            Top = 32
            Width = 65
            Height = 21
            TabOrder = 1
            OnChange = EditChange
            OnExit = Edit2Exit
          end
          object Edit3: TEdit
            Left = 32
            Top = 56
            Width = 41
            Height = 21
            TabOrder = 2
            Text = '1'
            OnChange = Edit3Change
            OnExit = Edit3Exit
          end
          object CBSeries: TComboBox
            Left = 0
            Top = 85
            Width = 105
            Height = 21
            TabOrder = 3
            OnChange = CBSeriesChange
          end
          object CheckListBox1: TCheckListBox
            Left = 0
            Top = 112
            Width = 108
            Height = 328
            OnClickCheck = CheckListBox1ClickCheck
            ItemHeight = 13
            TabOrder = 4
            OnClick = CheckListBox1Click
          end
          object UpDown1: TUpDown
            Left = 73
            Top = 56
            Width = 16
            Height = 21
            Associate = Edit3
            Min = 1
            Position = 1
            TabOrder = 5
            OnClick = UpDown1Click
          end
        end
        object Panel3: TPanel
          Left = 111
          Top = 0
          Width = 818
          Height = 438
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          OnResize = Panel3Resize
          object RzSplitter3: TRzSplitter
            Left = 0
            Top = 0
            Width = 818
            Height = 438
            Orientation = orVertical
            Position = 218
            UsePercent = True
            Align = alClient
            TabOrder = 0
            BarSize = (
              0
              218
              818
              222)
            UpperLeftControls = (
              CurrChart)
            LowerRightControls = (
              Chart1)
            object CurrChart: TChart
              Left = 0
              Top = 0
              Width = 818
              Height = 218
              BackWall.Brush.Color = clWhite
              BackWall.Brush.Style = bsClear
              BackWall.Brush.Gradient.Direction = gdBottomTop
              BackWall.Brush.Gradient.EndColor = clWhite
              BackWall.Brush.Gradient.StartColor = 15395562
              BackWall.Brush.Gradient.Visible = True
              BackWall.Gradient.Direction = gdBottomTop
              BackWall.Gradient.EndColor = clWhite
              BackWall.Gradient.StartColor = 15395562
              BackWall.Gradient.Visible = True
              BackWall.Transparent = False
              Foot.Font.Name = 'Verdana'
              Gradient.Direction = gdBottomTop
              Gradient.EndColor = clWhite
              Gradient.MidColor = 15395562
              Gradient.StartColor = 15395562
              LeftWall.Color = 14745599
              Legend.Font.Name = 'Verdana'
              Legend.MaxNumRows = 0
              Legend.Visible = False
              MarginBottom = 0
              MarginTop = 3
              RightWall.Color = 14745599
              SubFoot.Font.Name = 'Verdana'
              SubTitle.Font.Name = 'Verdana'
              Title.Font.Name = 'Verdana'
              Title.Text.Strings = (
                'TChart')
              Title.Visible = False
              OnScroll = CurrChartScroll
              OnUndoZoom = CurrChartUndoZoom
              OnZoom = CurrChartZoom
              BottomAxis.Axis.Color = 4210752
              BottomAxis.AxisValuesFormat = '##0.###'
              BottomAxis.Grid.Color = 11119017
              BottomAxis.LabelsFont.Name = 'Verdana'
              BottomAxis.LabelsSize = 15
              BottomAxis.LabelStyle = talValue
              BottomAxis.MaximumOffset = 1
              BottomAxis.MinimumOffset = 1
              BottomAxis.TicksInner.Color = 11119017
              BottomAxis.TickOnLabelsOnly = False
              BottomAxis.Title.Font.Name = 'Verdana'
              DepthAxis.Axis.Color = 4210752
              DepthAxis.Grid.Color = 11119017
              DepthAxis.LabelsFont.Name = 'Verdana'
              DepthAxis.TicksInner.Color = 11119017
              DepthAxis.Title.Font.Name = 'Verdana'
              DepthTopAxis.Axis.Color = 4210752
              DepthTopAxis.Grid.Color = 11119017
              DepthTopAxis.LabelsFont.Name = 'Verdana'
              DepthTopAxis.TicksInner.Color = 11119017
              DepthTopAxis.Title.Font.Name = 'Verdana'
              LeftAxis.Axis.Color = 4210752
              LeftAxis.AxisValuesFormat = '##0.###'
              LeftAxis.Grid.Color = 11119017
              LeftAxis.LabelsFont.Name = 'Verdana'
              LeftAxis.LabelsSize = 20
              LeftAxis.LabelStyle = talValue
              LeftAxis.MaximumOffset = 1
              LeftAxis.MinimumOffset = 1
              LeftAxis.TicksInner.Color = 11119017
              LeftAxis.TickOnLabelsOnly = False
              LeftAxis.Title.Font.Name = 'Verdana'
              RightAxis.Axis.Color = 4210752
              RightAxis.Grid.Color = 11119017
              RightAxis.LabelsFont.Name = 'Verdana'
              RightAxis.TicksInner.Color = 11119017
              RightAxis.Title.Font.Name = 'Verdana'
              RightAxis.Visible = False
              TopAxis.Axis.Color = 4210752
              TopAxis.Grid.Color = 11119017
              TopAxis.LabelsFont.Name = 'Verdana'
              TopAxis.TicksInner.Color = 11119017
              TopAxis.Title.Font.Name = 'Verdana'
              TopAxis.Visible = False
              View3D = False
              View3DWalls = False
              OnAfterDraw = CurrChartAfterDraw
              Align = alClient
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 0
              OnClick = CurrChartClick
              OnDblClick = CurrChartDblClick
              OnMouseDown = CurrChartMouseDown
              OnMouseMove = CurrChartMouseMove
              OnMouseUp = CurrChartMouseUp
              OnResize = CurrChartResize
              PrintMargins = (
                15
                39
                15
                39)
              ColorPaletteIndex = 13
              object UpDownY1: TUpDown
                Left = 4
                Top = 64
                Width = 12
                Height = 21
                Min = -32000
                Max = 32000
                TabOrder = 0
                Wrap = True
                OnClick = UpDownY1Click
              end
              object Series3: TFastLineSeries
                Active = False
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Visible = False
                Title = 'Series1'
                LinePen.Color = clRed
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object PointsI: TPointSeries
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Visible = False
                ClickableLine = False
                Pointer.Brush.Gradient.EndColor = 3513587
                Pointer.Gradient.EndColor = 3513587
                Pointer.InflateMargins = True
                Pointer.Style = psStar
                Pointer.Visible = True
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object ChartTool1: TAxisScrollTool
              end
              object CursorLineTool: TCursorTool
                Active = False
                FollowMouse = True
                Style = cssVertical
              end
              object CurrL: TAnnotationTool
                AutoSize = False
                Callout.Brush.Color = clBlack
                Callout.Arrow.Visible = False
                Position = ppRightTop
                PositionUnits = muPercent
                Shape.Brush.Gradient.SubGradient.Transparency = 44
                Shape.Emboss.Color = clWhite
                Shape.Emboss.Transparency = 7
                Shape.Font.Height = -17
                Shape.Font.Name = 'Tahoma'
                Shape.Gradient.SubGradient.Transparency = 44
                Shape.Shadow.Visible = False
                Shape.Transparency = 35
                Shape.AutoSize = False
                Shape.Margins.Right = 18
                Shape.Text = '00.0000 '#1084#1082#1040
                Shape.TextAlignment = taCenter
                Text = '00.0000 '#1084#1082#1040
                TextAlignment = taCenter
                Height = 25
                Width = 116
              end
              object ChartTool4: TAntiAliasTool
                AntiAlias = False
              end
              object ChartTool12: TCursorTool
                Active = False
                FollowMouse = True
              end
              object ChartTool13: TColorLineTool
                Active = False
                DragRepaint = True
                OnBeginDragLine = ChartTool13BeginDragLine
                OnDragLine = ChartTool13DragLine
                OnEndDragLine = ChartTool13EndDragLine
                AxisID = 2
              end
            end
            object Chart1: TChart
              Left = 0
              Top = 0
              Width = 818
              Height = 216
              BackWall.Brush.Color = clWhite
              BackWall.Brush.Style = bsClear
              BackWall.Brush.Gradient.Direction = gdBottomTop
              BackWall.Brush.Gradient.EndColor = clWhite
              BackWall.Brush.Gradient.StartColor = 15395562
              BackWall.Brush.Gradient.Visible = True
              BackWall.Gradient.Direction = gdBottomTop
              BackWall.Gradient.EndColor = clWhite
              BackWall.Gradient.StartColor = 15395562
              BackWall.Gradient.Visible = True
              BackWall.Transparent = False
              Foot.Font.Name = 'Verdana'
              Gradient.Direction = gdBottomTop
              Gradient.EndColor = clWhite
              Gradient.MidColor = 15395562
              Gradient.StartColor = 15395562
              LeftWall.Color = 14745599
              Legend.Font.Name = 'Verdana'
              Legend.MaxNumRows = 0
              Legend.Visible = False
              MarginBottom = 0
              MarginTop = 3
              RightWall.Color = 14745599
              SubFoot.Font.Name = 'Verdana'
              SubTitle.Font.Name = 'Verdana'
              Title.Font.Name = 'Verdana'
              Title.Text.Strings = (
                'TChart')
              Title.Visible = False
              OnScroll = Chart1Scroll
              OnUndoZoom = Chart1UndoZoom
              OnZoom = Chart1Zoom
              BottomAxis.Axis.Color = 4210752
              BottomAxis.Grid.Color = 11119017
              BottomAxis.LabelsFont.Name = 'Verdana'
              BottomAxis.LabelsSize = 15
              BottomAxis.MaximumOffset = 1
              BottomAxis.MinimumOffset = 1
              BottomAxis.TicksInner.Color = 11119017
              BottomAxis.Title.Font.Name = 'Verdana'
              DepthAxis.Axis.Color = 4210752
              DepthAxis.Grid.Color = 11119017
              DepthAxis.LabelsFont.Name = 'Verdana'
              DepthAxis.TicksInner.Color = 11119017
              DepthAxis.Title.Font.Name = 'Verdana'
              DepthTopAxis.Axis.Color = 4210752
              DepthTopAxis.Grid.Color = 11119017
              DepthTopAxis.LabelsFont.Name = 'Verdana'
              DepthTopAxis.TicksInner.Color = 11119017
              DepthTopAxis.Title.Font.Name = 'Verdana'
              LeftAxis.Axis.Color = 4210752
              LeftAxis.Grid.Color = 11119017
              LeftAxis.LabelsFont.Name = 'Verdana'
              LeftAxis.LabelsSize = 20
              LeftAxis.MaximumOffset = 1
              LeftAxis.MinimumOffset = 1
              LeftAxis.TicksInner.Color = 11119017
              LeftAxis.Title.Font.Name = 'Verdana'
              RightAxis.Axis.Color = 4210752
              RightAxis.Grid.Color = 11119017
              RightAxis.LabelsFont.Name = 'Verdana'
              RightAxis.TicksInner.Color = 11119017
              RightAxis.Title.Font.Name = 'Verdana'
              RightAxis.Visible = False
              TopAxis.Axis.Color = 4210752
              TopAxis.Grid.Color = 11119017
              TopAxis.LabelsFont.Name = 'Verdana'
              TopAxis.TicksInner.Color = 11119017
              TopAxis.Title.Font.Name = 'Verdana'
              TopAxis.Visible = False
              View3D = False
              View3DWalls = False
              OnAfterDraw = CurrChartAfterDraw
              Align = alClient
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 0
              OnDblClick = Chart1DblClick
              OnMouseMove = CurrChartMouseMove
              OnMouseUp = CurrChartMouseUp
              OnResize = Chart1Resize
              ColorPaletteIndex = 13
              object UpDownY2: TUpDown
                Left = 4
                Top = 64
                Width = 12
                Height = 21
                Min = -32000
                Max = 32000
                TabOrder = 0
                Wrap = True
                OnClick = UpDownY2Click
              end
              object UpDownX: TUpDown
                Left = 2
                Top = 200
                Width = 17
                Height = 12
                Min = -32000
                Max = 32000
                Orientation = udHorizontal
                TabOrder = 1
                Wrap = True
                OnClick = UpDownXClick
              end
              object Series4: TFastLineSeries
                Active = False
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Visible = False
                SeriesColor = clBlue
                Title = 'Series2'
                LinePen.Color = clBlue
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object PointsU: TPointSeries
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Visible = False
                ClickableLine = False
                Pointer.Brush.Gradient.EndColor = 10708548
                Pointer.Gradient.EndColor = 10708548
                Pointer.InflateMargins = True
                Pointer.Style = psStar
                Pointer.Visible = True
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object ChartTool2: TAxisScrollTool
              end
              object VoltL: TAnnotationTool
                AutoSize = False
                Callout.Brush.Color = clBlack
                Callout.Arrow.Visible = False
                Position = ppRightTop
                PositionUnits = muPercent
                Shape.Brush.Gradient.SubGradient.Transparency = 44
                Shape.Emboss.Color = clWhite
                Shape.Emboss.Transparency = 7
                Shape.Font.Height = -17
                Shape.Font.Name = 'Tahoma'
                Shape.Gradient.SubGradient.Transparency = 44
                Shape.Shadow.Visible = False
                Shape.Transparency = 35
                Shape.AutoSize = False
                Shape.Margins.Right = 18
                Shape.Text = '00.0000 '#1084#1042
                Shape.TextAlignment = taCenter
                Text = '00.0000 '#1084#1042
                TextAlignment = taCenter
                Height = 25
                Width = 116
              end
              object ChartTool5: TAntiAliasTool
                Active = False
                AntiAlias = False
              end
            end
          end
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'R, E'
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 929
        Height = 438
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 112
          Height = 438
          Align = alLeft
          BevelOuter = bvSpace
          TabOrder = 0
          OnResize = Panel2Resize
          object CheckListBox3: TCheckListBox
            Left = 1
            Top = 408
            Width = 110
            Height = 29
            OnClickCheck = CheckListBox1ClickCheck
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            Visible = False
            OnClick = CheckListBox1Click
          end
          object RzPanel2: TRzPanel
            Left = 1
            Top = 1
            Width = 110
            Height = 407
            Align = alTop
            BorderOuter = fsNone
            TabOrder = 1
            object RzGlyphStatus2: TRzGlyphStatus
              Left = 50
              Top = 133
              Width = 24
              FrameStyle = fsNone
              ImageIndex = 26
            end
            object RzComboBox2: TRzComboBox
              Left = 3
              Top = 3
              Width = 104
              Height = 21
              Hint = #1042#1099#1073#1086#1088' '#1089#1077#1088#1080#1080' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
              AllowEdit = False
              Color = clWhite
              DoubleBuffered = True
              FlatButtons = True
              ParentDoubleBuffered = False
              ReadOnlyColor = clWhite
              TabOrder = 0
              OnChange = RzComboBox2Change
            end
            object CheckBox1: TCheckBox
              Left = 3
              Top = 370
              Width = 20
              Height = 17
              Checked = True
              State = cbChecked
              TabOrder = 1
              Visible = False
            end
            object RzGroupBox1: TRzGroupBox
              Left = 1
              Top = 24
              Width = 103
              Height = 382
              TabOrder = 2
              object RzLabel9: TRzLabel
                Left = 6
                Top = 13
                Width = 6
                Height = 13
                Caption = 'T'
              end
              object RzLabel16: TRzLabel
                Left = 7
                Top = 57
                Width = 5
                Height = 13
                Caption = 'L'
              end
              object RzLabel12: TRzLabel
                Left = 78
                Top = 13
                Width = 21
                Height = 13
                Caption = #1089#1077#1082'.'
              end
              object RzLabel15: TRzLabel
                Left = 78
                Top = 57
                Width = 21
                Height = 13
                Caption = #1089#1077#1082'.'
              end
              object RzStatusPane2: TRzStatusPane
                Left = 3
                Top = 30
                Width = 96
                Alignment = taCenter
              end
              object RzStatusPane3: TRzStatusPane
                Left = 3
                Top = 74
                Width = 96
                Alignment = taCenter
              end
              object RzGroupBox2: TRzGroupBox
                Left = 3
                Top = 295
                Width = 95
                Height = 83
                TabOrder = 0
                object RzGlyphStatus3: TRzGlyphStatus
                  Left = 7
                  Top = -3
                  Width = 24
                  FrameStyle = fsNone
                  Transparent = False
                  ImageIndex = 26
                  Images = ToolBarImageList
                end
                object RzToolButton1: TRzToolButton
                  Left = 66
                  Top = 9
                  DisabledIndex = 43
                  ImageIndex = 42
                  Images = ToolBarImageList
                  Enabled = False
                  OnClick = RzToolButton1Click
                end
                object RzStatusPane1: TRzStatusPane
                  Left = 3
                  Top = 58
                  Width = 87
                  Alignment = taCenter
                end
                object RadioButton4: TRadioButton
                  Left = 10
                  Top = 15
                  Width = 32
                  Height = 17
                  Caption = 'inf'
                  Checked = True
                  TabOrder = 0
                  TabStop = True
                  OnClick = RadioButton4Click
                end
                object RadioButton3: TRadioButton
                  Left = 9
                  Top = 38
                  Width = 24
                  Height = 17
                  Caption = 'N'
                  TabOrder = 1
                  OnClick = RadioButton3Click
                end
                object RzSpinEdit3: TRzSpinEdit
                  Left = 43
                  Top = 36
                  Width = 43
                  Height = 21
                  Max = 999.000000000000000000
                  Value = 5.000000000000000000
                  Enabled = False
                  FlatButtons = True
                  TabOrder = 2
                end
              end
              object RzNumericEdit5: TRzSpinEdit
                Left = 16
                Top = 9
                Width = 58
                Height = 21
                Hint = #1048#1085#1090#1077#1088#1074#1072#1083' '#1084#1077#1078#1076#1091' '#1080#1084#1087#1091#1083#1100#1089#1072#1084#1080
                Max = 999.000000000000000000
                Value = 20.000000000000000000
                TabOrder = 1
              end
              object RzNumericEdit6: TRzSpinEdit
                Left = 14
                Top = 52
                Width = 58
                Height = 21
                Hint = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1080#1084#1087#1091#1083#1100#1089#1072
                Max = 999.000000000000000000
                Value = 5.000000000000000000
                TabOrder = 2
                OnChange = RzSpinEdit1Change
              end
              object RzGroupBox3: TRzGroupBox
                Left = 3
                Top = 96
                Width = 95
                Height = 42
                TabOrder = 3
                object RzLabel1: TRzLabel
                  Left = 8
                  Top = 20
                  Width = 16
                  Height = 13
                  Caption = 'L +'
                end
                object RzSpinEdit5: TRzSpinEdit
                  Left = 30
                  Top = 17
                  Width = 55
                  Height = 21
                  Hint = 
                    #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1077' '#1074#1088#1077#1084#1103' '#1087#1086#1089#1083#1077' '#1080#1084#1087#1091#1083#1100#1089#1072' '#1087#1088#1080' '#1082#1086#1090#1086#1088#1086#1084' '#1074#1099#1088#1077#1079#1072#1077#1090#1089#1103' '#1091#1095#1072#1089#1090 +
                    #1086#1082' '#1076#1080#1085#1072#1084#1080#1082#1080' '#1087#1086#1090#1077#1085#1094#1080#1072#1083#1072
                  Decimals = 2
                  Increment = 0.050000000000000000
                  Max = 10.000000000000000000
                  Value = 2.000000000000000000
                  TabOrder = 0
                end
                object CheckBox4: TRzCheckBox
                  Left = 8
                  Top = -2
                  Width = 63
                  Height = 15
                  Hint = 
                    #1042#1099#1088#1077#1079#1072#1090#1100' '#1080#1079' '#1079#1072#1087#1080#1089#1080' '#1076#1080#1085#1072#1084#1080#1082#1080' '#1087#1086#1090#1077#1085#1094#1080#1072#1083#1072' '#1087#1088#1086#1084#1077#1078#1091#1090#1086#1082' '#1087#1088#1080' '#1082#1086#1090#1086#1088#1086#1084' '#1087#1086 +
                    #1076#1072#1077#1090#1089#1103' '#1080#1084#1087#1091#1083#1100#1089
                  Caption = 'Cutting E'
                  Checked = True
                  State = cbChecked
                  TabOrder = 1
                end
              end
              object RzGroupBox4: TRzGroupBox
                Left = 5
                Top = 137
                Width = 95
                Height = 158
                TabOrder = 4
                object RzLabel11: TRzLabel
                  Left = 5
                  Top = 14
                  Width = 12
                  Height = 13
                  Caption = 'Ea'
                end
                object RzLabel14: TRzLabel
                  Left = 77
                  Top = 14
                  Width = 12
                  Height = 13
                  Caption = #1084#1042
                end
                object RzGlyphStatus1: TRzGlyphStatus
                  Left = 16
                  Top = 29
                  Width = 24
                  FrameStyle = fsNone
                  Transparent = False
                  ImageIndex = 52
                  Images = ToolBarImageList
                end
                object RzLabel2: TRzLabel
                  Left = 37
                  Top = 32
                  Width = 55
                  Height = 13
                  Caption = '(% of max)'
                end
                object RzLabel3: TRzLabel
                  Left = 5
                  Top = 53
                  Width = 15
                  Height = 13
                  Caption = 'Inc'
                end
                object RzLabel4: TRzLabel
                  Left = 6
                  Top = 77
                  Width = 18
                  Height = 13
                  Caption = 'Dec'
                end
                object RzLabel5: TRzLabel
                  Left = 5
                  Top = 101
                  Width = 38
                  Height = 13
                  Caption = 'DE Targ'
                end
                object RzLabel6: TRzLabel
                  Left = 4
                  Top = 124
                  Width = 46
                  Height = 13
                  Caption = 'Boundary'
                end
                object RzSpinEdit4: TRzSpinEdit
                  Left = 18
                  Top = 9
                  Width = 58
                  Height = 21
                  Hint = #1047#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1074#1099' '#1093#1086#1076#1077' '#1075#1077#1085#1077#1088#1072#1090#1086#1088#1072' '#1080#1084#1087#1091#1083#1100#1089#1086#1074
                  Increment = 25.000000000000000000
                  Max = 10000.000000000000000000
                  Min = -10000.000000000000000000
                  TabOrder = 0
                  OnChange = RzSpinEdit4Change
                end
                object RzCheckBox2: TRzCheckBox
                  Left = 4
                  Top = 31
                  Width = 19
                  Height = 15
                  Hint = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1087#1086#1076#1073#1080#1088#1072#1090#1100' '#1074#1077#1083#1080#1095#1080#1085#1091' '#1090#1086#1082#1072' '#1076#1083#1103' '#1087#1086#1076#1076#1077#1088#1078#1072#1085#1080#1103' DE Targ'
                  Checked = True
                  State = cbChecked
                  TabOrder = 1
                  Transparent = True
                end
                object RzSpinEdit6: TRzSpinEdit
                  Left = 36
                  Top = 47
                  Width = 59
                  Height = 21
                  Hint = 
                    #1055#1088#1086#1094#1077#1085#1090' '#1087#1088#1080#1088#1086#1097#1077#1085#1080#1103' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103' '#1085#1072' '#1074#1099#1093#1086#1076#1077' '#1075#1077#1085#1077#1088#1072#1090#1086#1088#1072' '#1080#1084#1087#1091#1083#1100#1089#1086#1074' ('#1055#1088 +
                    #1086#1094#1077#1085#1090' '#1086#1090' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103' (10000 '#1084#1042'))'
                  Decimals = 2
                  Increment = 0.050000000000000000
                  Max = 25.000000000000000000
                  Min = 0.250000000000000000
                  Value = 2.000000000000000000
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object RzSpinEdit7: TRzSpinEdit
                  Left = 33
                  Top = 74
                  Width = 59
                  Height = 21
                  Hint = 
                    #1055#1088#1086#1094#1077#1085#1090' '#1091#1084#1077#1085#1100#1096#1077#1085#1080#1103' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103' '#1085#1072' '#1074#1099#1093#1086#1076#1077' '#1075#1077#1085#1077#1088#1072#1090#1086#1088#1072' '#1080#1084#1087#1091#1083#1100#1089#1086#1074' ('#1055#1088 +
                    #1086#1094#1077#1085#1090' '#1086#1090' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1075#1086' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103' (10000 '#1084#1042'))'
                  Decimals = 2
                  Increment = 0.050000000000000000
                  Max = 25.000000000000000000
                  Min = 0.250000000000000000
                  Value = 2.000000000000000000
                  TabOrder = 3
                end
                object RzSpinEdit8: TRzSpinEdit
                  Left = 49
                  Top = 97
                  Width = 42
                  Height = 21
                  Hint = 
                    #1046#1077#1083#1072#1077#1084#1072#1103' '#1074#1077#1083#1080#1095#1080#1085#1072', '#1085#1072' '#1082#1086#1090#1086#1088#1091#1102' '#1076#1086#1083#1078#1077#1085' '#1080#1079#1084#1077#1085#1103#1090#1100#1089#1103' '#1087#1086#1090#1077#1085#1094#1080#1072#1083' '#1087#1088#1080' '#1087#1088 +
                    #1086#1087#1091#1089#1082#1072#1085#1080#1080' '#1090#1086#1082#1072
                  Max = 100.000000000000000000
                  Min = -100.000000000000000000
                  Value = -10.000000000000000000
                  TabOrder = 4
                  OnChange = RzSpinEdit8Change
                end
                object RzSpinEdit9: TRzSpinEdit
                  Left = 53
                  Top = 120
                  Width = 37
                  Height = 21
                  Hint = #1043#1088#1072#1085#1080#1094#1099' '#1076#1086#1087#1091#1089#1090#1080#1084#1099#1093' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1086#1090' DE Targ (+/-) '#1074' '#1084#1080#1083#1080#1074#1086#1083#1100#1090#1072#1093
                  Max = 10.000000000000000000
                  Value = 1.000000000000000000
                  TabOrder = 5
                end
                object RzCheckBox3: TRzCheckBox
                  Left = 8
                  Top = 138
                  Width = 35
                  Height = 15
                  Hint = 
                    #1054#1073#1084#1077#1085' '#1087#1088#1080#1088#1086#1097#1077#1085#1080#1103' '#1080' '#1091#1084#1077#1085#1100#1096#1077#1085#1080#1103' ('#1048#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103' '#1076#1083#1103' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103' '#1089#1086#1074#1084 +
                    #1077#1089#1090#1080#1084#1086#1089#1090#1080' '#1089' '#1088#1072#1079#1083#1080#1095#1085#1099#1084#1080' '#1072#1087#1087#1072#1088#1072#1090#1085#1099#1084#1080' '#1095#1072#1089#1090#1103#1084#1080')'
                  Caption = 'Inv'
                  State = cbUnchecked
                  TabOrder = 6
                  Transparent = True
                end
              end
            end
          end
        end
        object RzSplitter1: TRzSplitter
          Left = 112
          Top = 0
          Width = 573
          Height = 438
          Orientation = orVertical
          Position = 304
          Percent = 70
          UsePercent = True
          SplitterWidth = 7
          Align = alClient
          TabOrder = 1
          BarSize = (
            0
            304
            573
            311)
          UpperLeftControls = (
            VoltageChart)
          LowerRightControls = (
            CurrentChart)
          object VoltageChart: TChart
            Left = 0
            Top = 0
            Width = 573
            Height = 304
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Brush.Gradient.Direction = gdBottomTop
            BackWall.Brush.Gradient.EndColor = clWhite
            BackWall.Brush.Gradient.StartColor = 15395562
            BackWall.Brush.Gradient.Visible = True
            BackWall.Gradient.Direction = gdBottomTop
            BackWall.Gradient.EndColor = clWhite
            BackWall.Gradient.StartColor = 15395562
            BackWall.Gradient.Visible = True
            BackWall.Transparent = False
            Foot.Font.Name = 'Verdana'
            Gradient.Direction = gdBottomTop
            Gradient.EndColor = clWhite
            Gradient.MidColor = 15395562
            Gradient.StartColor = 15395562
            LeftWall.Color = 14745599
            Legend.Font.Name = 'Verdana'
            Legend.MaxNumRows = 0
            Legend.Visible = False
            MarginBottom = 0
            MarginTop = 3
            RightWall.Color = 14745599
            SubFoot.Font.Name = 'Verdana'
            SubTitle.Font.Name = 'Verdana'
            Title.Font.Name = 'Verdana'
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            OnClickAxis = VoltageChartClickAxis
            OnUndoZoom = VoltageChartUndoZoom
            BottomAxis.Axis.Color = 4210752
            BottomAxis.Axis.Width = 1
            BottomAxis.AxisValuesFormat = '##0.##'
            BottomAxis.Grid.Color = 11119017
            BottomAxis.LabelsFont.Name = 'Verdana'
            BottomAxis.LabelsSeparation = 20
            BottomAxis.LabelsSize = 15
            BottomAxis.LabelStyle = talValue
            BottomAxis.MaximumOffset = 1
            BottomAxis.MinimumOffset = 1
            BottomAxis.TicksInner.Color = 11119017
            BottomAxis.TickOnLabelsOnly = False
            BottomAxis.Title.Font.Name = 'Verdana'
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Axis.Color = 4210752
            DepthAxis.Axis.Width = 1
            DepthAxis.Grid.Color = 11119017
            DepthAxis.LabelsFont.Name = 'Verdana'
            DepthAxis.Maximum = 1.160000000000001000
            DepthAxis.Minimum = 0.160000000000000300
            DepthAxis.TicksInner.Color = 11119017
            DepthAxis.Title.Font.Name = 'Verdana'
            DepthTopAxis.Automatic = False
            DepthTopAxis.AutomaticMaximum = False
            DepthTopAxis.AutomaticMinimum = False
            DepthTopAxis.Axis.Color = 4210752
            DepthTopAxis.Axis.Width = 1
            DepthTopAxis.Grid.Color = 11119017
            DepthTopAxis.LabelsFont.Name = 'Verdana'
            DepthTopAxis.Maximum = 1.160000000000001000
            DepthTopAxis.Minimum = 0.160000000000000300
            DepthTopAxis.TicksInner.Color = 11119017
            DepthTopAxis.Title.Font.Name = 'Verdana'
            LeftAxis.Axis.Color = 4210752
            LeftAxis.Axis.Width = 1
            LeftAxis.AxisValuesFormat = '##0.###'
            LeftAxis.Grid.Color = 11119017
            LeftAxis.LabelsFont.Name = 'Verdana'
            LeftAxis.LabelsSize = 20
            LeftAxis.LabelStyle = talValue
            LeftAxis.MaximumOffset = 1
            LeftAxis.MinimumOffset = 1
            LeftAxis.TicksInner.Color = 11119017
            LeftAxis.TickOnLabelsOnly = False
            LeftAxis.Title.Font.Name = 'Verdana'
            RightAxis.Axis.Color = 4210752
            RightAxis.Axis.Width = 1
            RightAxis.ExactDateTime = False
            RightAxis.Grid.Color = 11119017
            RightAxis.Increment = 0.100000000000000000
            RightAxis.LabelsFont.Name = 'Verdana'
            RightAxis.MaximumOffset = 5
            RightAxis.MinimumOffset = 5
            RightAxis.TicksInner.Color = 11119017
            RightAxis.Title.Font.Name = 'Verdana'
            TopAxis.Axis.Color = 4210752
            TopAxis.Axis.Width = 1
            TopAxis.Grid.Color = 11119017
            TopAxis.LabelsFont.Name = 'Verdana'
            TopAxis.TicksInner.Color = 11119017
            TopAxis.Title.Font.Name = 'Verdana'
            TopAxis.Visible = False
            View3D = False
            View3DWalls = False
            OnBeforeDrawChart = VoltageChartBeforeDrawChart
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            OnDblClick = VoltageChartDblClick
            OnMouseUp = VoltageChartMouseUp
            OnResize = VoltageChartResize
            PrintMargins = (
              15
              19
              15
              19)
            ColorPaletteIndex = 13
            object UpDown8: TUpDown
              Left = 1
              Top = 104
              Width = 12
              Height = 21
              Min = -32000
              Max = 32000
              TabOrder = 0
              Wrap = True
              OnClick = UpDown8Click
            end
            object UpDown9: TUpDown
              Left = 1
              Top = 236
              Width = 21
              Height = 12
              Min = -32000
              Max = 32000
              Orientation = udHorizontal
              TabOrder = 1
              Wrap = True
              OnClick = UpDown9Click
            end
            object UpDown4: TUpDown
              Left = 389
              Top = 104
              Width = 12
              Height = 21
              Min = -32000
              Max = 32000
              TabOrder = 2
              Wrap = True
              OnClick = UpDown4Click
            end
            object PointSeries2: TPointSeries
              Active = False
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              Title = 'PointsI'
              ClickableLine = False
              Pointer.Brush.Gradient.EndColor = 10708548
              Pointer.Gradient.EndColor = 10708548
              Pointer.HorizSize = 5
              Pointer.InflateMargins = True
              Pointer.Style = psCross
              Pointer.VertSize = 5
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object VoltageSeries: TFastLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              SeriesColor = clBlue
              LinePen.Color = clBlue
              TreatNulls = tnDontPaint
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object Series5: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              SeriesColor = 4194304
              VertAxis = aRightAxis
              LinePen.Color = 4194304
              Pointer.Brush.Gradient.EndColor = 4194304
              Pointer.Gradient.EndColor = 4194304
              Pointer.InflateMargins = True
              Pointer.Style = psCircle
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object ColorLineTool3: TColorLineTool
              Active = False
              DragRepaint = True
              Draw3D = False
              Value = 447.131336405530000000
              AxisID = 2
            end
            object CursorTool4: TCursorTool
              Active = False
              FollowMouse = True
            end
            object VoltageL: TAnnotationTool
              AutoSize = False
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              Position = ppRightTop
              Shape.Brush.Gradient.SubGradient.Transparency = 44
              Shape.Emboss.Color = clWhite
              Shape.Emboss.Transparency = 7
              Shape.Font.Height = -17
              Shape.Font.Name = 'Tahoma'
              Shape.Gradient.SubGradient.Transparency = 44
              Shape.Shadow.Visible = False
              Shape.Transparency = 35
              Shape.AutoSize = False
              Shape.Margins.Right = 18
              Shape.Text = '000.0 '#1084#1042' | Last R 0000 '#1082#1054#1084
              Shape.TextAlignment = taCenter
              Text = '000.0 '#1084#1042' | Last R 0000 '#1082#1054#1084
              TextAlignment = taCenter
              Height = 25
              Width = 240
            end
            object RLabel: TAnnotationTool
              Active = False
              AutoSize = False
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              Position = ppRightTop
              PositionUnits = muPercent
              Shape.Brush.Gradient.SubGradient.Transparency = 44
              Shape.Emboss.Color = clWhite
              Shape.Emboss.Transparency = 7
              Shape.Font.Height = -17
              Shape.Font.Name = 'Tahoma'
              Shape.Gradient.SubGradient.Transparency = 44
              Shape.Shadow.Visible = False
              Shape.Transparency = 35
              Shape.AutoSize = False
              Shape.Margins.Right = 18
              Shape.Text = 'Last R 0000 '#1082#1054#1084
              Shape.TextAlignment = taCenter
              Text = 'Last R 0000 '#1082#1054#1084
              TextAlignment = taCenter
              Height = 26
              Width = 137
            end
            object VoltageLDelta: TAnnotationTool
              Active = False
              AutoSize = False
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              PositionUnits = muPercent
              Shape.Brush.Gradient.SubGradient.Transparency = 44
              Shape.Emboss.Color = clWhite
              Shape.Emboss.Transparency = 7
              Shape.Font.Height = -17
              Shape.Font.Name = 'Tahoma'
              Shape.Gradient.SubGradient.Transparency = 44
              Shape.Shadow.Visible = False
              Shape.Transparency = 35
              Shape.AutoSize = False
              Shape.Margins.Right = 20
              Shape.Text = ' Delta E 00.0000 '#1084#1042
              Shape.TextAlignment = taCenter
              Text = ' Delta E 00.0000 '#1084#1042
              TextAlignment = taCenter
              Height = 25
              Width = 160
            end
            object CursorTool5: TCursorTool
              Active = False
              FollowMouse = True
              Pen.Style = psDot
              Style = cssVertical
            end
            object AnnotationTool4: TAnnotationTool
              Active = False
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              Shape.Font.Height = -17
              Shape.Font.Name = 'Tahoma'
              Shape.Shadow.Visible = False
              Shape.Transparency = 35
              Shape.Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
              Shape.TextAlignment = taCenter
              Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
              TextAlignment = taCenter
            end
            object ChartTool6: TAxisScrollTool
            end
            object ChartTool10: TRectangleTool
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              Cursor = crArrow
              Position = ppCenter
              Shape.Color = clRed
              Shape.Emboss.HorizSize = 0
              Shape.Emboss.VertSize = 0
              Shape.Font.Height = -16
              Shape.Font.Name = 'Tahoma'
              Shape.Font.Style = [fsBold]
              Shape.Frame.Style = psDot
              Shape.Left = 50
              Shape.Shadow.HorizSize = 0
              Shape.Shadow.VertSize = 0
              Shape.Top = 50
              Shape.Transparency = 75
              Shape.AutoSize = False
              Shape.Cursor = crArrow
              Shape.Text = #1044#1077#1084#1086' '#1088#1077#1078#1080#1084#13#1055#1088#1080#1073#1086#1088' '#1085#1077#13#1087#1086#1076#1082#1083#1102#1095#1077#1085
              Shape.TextAlignment = taCenter
              Text = #1044#1077#1084#1086' '#1088#1077#1078#1080#1084#13#1055#1088#1080#1073#1086#1088' '#1085#1077#13#1087#1086#1076#1082#1083#1102#1095#1077#1085
              TextAlignment = taCenter
              Height = 70
              Width = 165
              AllowDrag = False
              AllowResize = False
            end
          end
          object CurrentChart: TChart
            Left = 0
            Top = 0
            Width = 573
            Height = 127
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Brush.Gradient.Direction = gdBottomTop
            BackWall.Brush.Gradient.EndColor = clWhite
            BackWall.Brush.Gradient.StartColor = 15395562
            BackWall.Brush.Gradient.Visible = True
            BackWall.Gradient.Direction = gdBottomTop
            BackWall.Gradient.EndColor = clWhite
            BackWall.Gradient.StartColor = 15395562
            BackWall.Gradient.Visible = True
            BackWall.Transparent = False
            Foot.Font.Name = 'Verdana'
            Gradient.Direction = gdBottomTop
            Gradient.EndColor = clWhite
            Gradient.MidColor = 15395562
            Gradient.StartColor = 15395562
            LeftWall.Color = 14745599
            Legend.Font.Name = 'Verdana'
            Legend.MaxNumRows = 0
            Legend.Visible = False
            MarginBottom = 0
            MarginTop = 3
            RightWall.Color = 14745599
            SubFoot.Font.Name = 'Verdana'
            SubTitle.Font.Name = 'Verdana'
            Title.Font.Name = 'Verdana'
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            BottomAxis.Axis.Color = 4210752
            BottomAxis.Axis.Width = 1
            BottomAxis.AxisValuesFormat = '##0.##'
            BottomAxis.Grid.Color = 11119017
            BottomAxis.LabelsFont.Name = 'Verdana'
            BottomAxis.LabelsSeparation = 20
            BottomAxis.LabelsSize = 15
            BottomAxis.LabelStyle = talValue
            BottomAxis.MaximumOffset = 1
            BottomAxis.MinimumOffset = 1
            BottomAxis.TicksInner.Color = 11119017
            BottomAxis.TickOnLabelsOnly = False
            BottomAxis.Title.Font.Name = 'Verdana'
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Axis.Color = 4210752
            DepthAxis.Axis.Width = 1
            DepthAxis.Grid.Color = 11119017
            DepthAxis.LabelsFont.Name = 'Verdana'
            DepthAxis.Maximum = 1.250000000000001000
            DepthAxis.Minimum = 0.250000000000000400
            DepthAxis.TicksInner.Color = 11119017
            DepthAxis.Title.Font.Name = 'Verdana'
            DepthTopAxis.Automatic = False
            DepthTopAxis.AutomaticMaximum = False
            DepthTopAxis.AutomaticMinimum = False
            DepthTopAxis.Axis.Color = 4210752
            DepthTopAxis.Axis.Width = 1
            DepthTopAxis.Grid.Color = 11119017
            DepthTopAxis.LabelsFont.Name = 'Verdana'
            DepthTopAxis.Maximum = 1.250000000000001000
            DepthTopAxis.Minimum = 0.250000000000000400
            DepthTopAxis.TicksInner.Color = 11119017
            DepthTopAxis.Title.Font.Name = 'Verdana'
            LeftAxis.Axis.Color = 4210752
            LeftAxis.Axis.Width = 1
            LeftAxis.AxisValuesFormat = '##0.###'
            LeftAxis.Grid.Color = 11119017
            LeftAxis.LabelsFont.Name = 'Verdana'
            LeftAxis.LabelsSize = 20
            LeftAxis.LabelStyle = talValue
            LeftAxis.MaximumOffset = 1
            LeftAxis.MinimumOffset = 1
            LeftAxis.TicksInner.Color = 11119017
            LeftAxis.TickOnLabelsOnly = False
            LeftAxis.Title.Font.Name = 'Verdana'
            RightAxis.Axis.Color = 4210752
            RightAxis.Axis.Width = 1
            RightAxis.Grid.Color = 11119017
            RightAxis.LabelsFont.Name = 'Verdana'
            RightAxis.MaximumOffset = 6
            RightAxis.MinimumOffset = 6
            RightAxis.TicksInner.Color = 11119017
            RightAxis.Title.Font.Name = 'Verdana'
            TopAxis.Axis.Color = 4210752
            TopAxis.Axis.Width = 1
            TopAxis.Grid.Color = 11119017
            TopAxis.LabelsFont.Name = 'Verdana'
            TopAxis.TicksInner.Color = 11119017
            TopAxis.Title.Font.Name = 'Verdana'
            TopAxis.Visible = False
            View3D = False
            View3DWalls = False
            OnBeforeDrawChart = VoltageChartBeforeDrawChart
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            OnDblClick = CurrentChartDblClick
            OnResize = CurrentChartResize
            PrintMargins = (
              15
              38
              15
              38)
            ColorPaletteIndex = 13
            object UpDown14: TUpDown
              Left = 1
              Top = 64
              Width = 12
              Height = 21
              Min = -32000
              Max = 32000
              TabOrder = 0
              Wrap = True
              OnClick = UpDown14Click
            end
            object UpDown15: TUpDown
              Left = 1
              Top = 152
              Width = 21
              Height = 12
              Min = -32000
              Max = 32000
              Orientation = udHorizontal
              TabOrder = 1
              Wrap = True
              OnClick = UpDown15Click
            end
            object PointSeries5: TPointSeries
              Active = False
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              Title = 'PointsI'
              VertAxis = aRightAxis
              ClickableLine = False
              Pointer.Brush.Gradient.EndColor = 10708548
              Pointer.Gradient.EndColor = 10708548
              Pointer.HorizSize = 5
              Pointer.InflateMargins = True
              Pointer.Style = psCross
              Pointer.VertSize = 5
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object CurrentSeries: TFastLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              SeriesColor = clRed
              LinePen.Color = clRed
              TreatNulls = tnDontPaint
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object ColorLineTool6: TColorLineTool
              Active = False
              DragRepaint = True
              Draw3D = False
              AxisID = 2
            end
            object CursorTool10: TCursorTool
              Active = False
              FollowMouse = True
            end
            object CurrentL: TAnnotationTool
              AutoSize = False
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              Position = ppRightTop
              PositionUnits = muPercent
              Shape.Brush.Gradient.SubGradient.Transparency = 44
              Shape.Emboss.Color = clWhite
              Shape.Emboss.Transparency = 7
              Shape.Font.Height = -17
              Shape.Font.Name = 'Tahoma'
              Shape.Gradient.SubGradient.Transparency = 44
              Shape.Shadow.Visible = False
              Shape.Transparency = 35
              Shape.AutoSize = False
              Shape.Margins.Right = 18
              Shape.Text = '00.0000 '#1084#1082#1040
              Shape.TextAlignment = taCenter
              Text = '00.0000 '#1084#1082#1040
              TextAlignment = taCenter
              Height = 25
              Width = 116
            end
            object CurrentLDelta: TAnnotationTool
              Active = False
              AutoSize = False
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              PositionUnits = muPercent
              Shape.Brush.Gradient.SubGradient.Transparency = 44
              Shape.Emboss.Color = clWhite
              Shape.Emboss.Transparency = 7
              Shape.Font.Height = -17
              Shape.Font.Name = 'Tahoma'
              Shape.Gradient.SubGradient.Transparency = 44
              Shape.Shadow.Visible = False
              Shape.Transparency = 35
              Shape.AutoSize = False
              Shape.Margins.Right = 20
              Shape.Text = ' Delta I 00.0000 '#1084#1082#1040
              Shape.TextAlignment = taCenter
              Text = ' Delta I 00.0000 '#1084#1082#1040
              TextAlignment = taCenter
              Height = 25
              Width = 160
            end
            object CursorTool11: TCursorTool
              Active = False
              FollowMouse = True
              Pen.Style = psDot
              Style = cssVertical
            end
            object AnnotationTool9: TAnnotationTool
              Active = False
              Callout.Brush.Color = clBlack
              Callout.Arrow.Visible = False
              Shape.Font.Height = -17
              Shape.Font.Name = 'Tahoma'
              Shape.Shadow.Visible = False
              Shape.Transparency = 35
              Shape.Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
              Shape.TextAlignment = taCenter
              Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
              TextAlignment = taCenter
            end
            object AxisScrollTool2: TAxisScrollTool
            end
          end
        end
        object RzSizePanel1: TRzSizePanel
          Left = 685
          Top = 0
          Width = 244
          Height = 438
          Align = alRight
          HotSpotVisible = True
          SizeBarWidth = 7
          TabOrder = 2
          object RzSplitter6: TRzSplitter
            Left = 8
            Top = 0
            Width = 236
            Height = 438
            Orientation = orVertical
            Position = 174
            Percent = 40
            UsePercent = True
            Align = alClient
            TabOrder = 0
            BarSize = (
              0
              174
              236
              178)
            UpperLeftControls = (
              RChart)
            LowerRightControls = (
              RzSplitter2)
            object RChart: TChart
              Left = 0
              Top = 0
              Width = 236
              Height = 174
              BackWall.Brush.Color = clWhite
              BackWall.Brush.Style = bsClear
              BackWall.Brush.Gradient.Direction = gdBottomTop
              BackWall.Brush.Gradient.EndColor = clWhite
              BackWall.Brush.Gradient.StartColor = 15395562
              BackWall.Brush.Gradient.Visible = True
              BackWall.Gradient.Direction = gdBottomTop
              BackWall.Gradient.EndColor = clWhite
              BackWall.Gradient.StartColor = 15395562
              BackWall.Gradient.Visible = True
              BackWall.Transparent = False
              Foot.Font.Name = 'Verdana'
              Gradient.Direction = gdBottomTop
              Gradient.EndColor = clWhite
              Gradient.MidColor = 15395562
              Gradient.StartColor = 15395562
              LeftWall.Color = 14745599
              Legend.Font.Name = 'Verdana'
              Legend.MaxNumRows = 0
              Legend.Visible = False
              MarginBottom = 0
              MarginTop = 3
              RightWall.Color = 14745599
              SubFoot.Font.Name = 'Verdana'
              SubTitle.Font.Name = 'Verdana'
              Title.Font.Name = 'Verdana'
              Title.Text.Strings = (
                'TChart')
              Title.Visible = False
              BottomAxis.Axis.Color = 4210752
              BottomAxis.Axis.Width = 1
              BottomAxis.AxisValuesFormat = '##0.###'
              BottomAxis.Grid.Color = 11119017
              BottomAxis.LabelsFont.Name = 'Verdana'
              BottomAxis.LabelsSize = 15
              BottomAxis.LabelStyle = talValue
              BottomAxis.MaximumOffset = 1
              BottomAxis.MinimumOffset = 1
              BottomAxis.TicksInner.Color = 11119017
              BottomAxis.TickOnLabelsOnly = False
              BottomAxis.Title.Font.Name = 'Verdana'
              DepthAxis.Automatic = False
              DepthAxis.AutomaticMaximum = False
              DepthAxis.AutomaticMinimum = False
              DepthAxis.Axis.Color = 4210752
              DepthAxis.Axis.Width = 1
              DepthAxis.Grid.Color = 11119017
              DepthAxis.LabelsFont.Name = 'Verdana'
              DepthAxis.Maximum = 1.160000000000001000
              DepthAxis.Minimum = 0.160000000000000300
              DepthAxis.TicksInner.Color = 11119017
              DepthAxis.Title.Font.Name = 'Verdana'
              DepthTopAxis.Automatic = False
              DepthTopAxis.AutomaticMaximum = False
              DepthTopAxis.AutomaticMinimum = False
              DepthTopAxis.Axis.Color = 4210752
              DepthTopAxis.Axis.Width = 1
              DepthTopAxis.Grid.Color = 11119017
              DepthTopAxis.LabelsFont.Name = 'Verdana'
              DepthTopAxis.Maximum = 1.160000000000001000
              DepthTopAxis.Minimum = 0.160000000000000300
              DepthTopAxis.TicksInner.Color = 11119017
              DepthTopAxis.Title.Font.Name = 'Verdana'
              LeftAxis.Axis.Color = 4210752
              LeftAxis.Axis.Width = 1
              LeftAxis.AxisValuesFormat = '##0.###'
              LeftAxis.Grid.Color = 11119017
              LeftAxis.LabelsFont.Name = 'Verdana'
              LeftAxis.LabelsSize = 20
              LeftAxis.LabelStyle = talValue
              LeftAxis.MaximumOffset = 1
              LeftAxis.MinimumOffset = 1
              LeftAxis.TicksInner.Color = 11119017
              LeftAxis.TickOnLabelsOnly = False
              LeftAxis.Title.Font.Name = 'Verdana'
              RightAxis.Automatic = False
              RightAxis.AutomaticMaximum = False
              RightAxis.AutomaticMinimum = False
              RightAxis.Axis.Color = 4210752
              RightAxis.Axis.Width = 1
              RightAxis.Grid.Color = 11119017
              RightAxis.LabelsFont.Name = 'Verdana'
              RightAxis.TicksInner.Color = 11119017
              RightAxis.Title.Font.Name = 'Verdana'
              RightAxis.Visible = False
              TopAxis.Axis.Color = 4210752
              TopAxis.Axis.Width = 1
              TopAxis.Grid.Color = 11119017
              TopAxis.LabelsFont.Name = 'Verdana'
              TopAxis.TicksInner.Color = 11119017
              TopAxis.Title.Font.Name = 'Verdana'
              TopAxis.Visible = False
              View3D = False
              View3DWalls = False
              OnBeforeDrawChart = VoltageChartBeforeDrawChart
              Align = alClient
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 0
              OnDblClick = RChartDblClick
              OnResize = RChartResize
              PrintMargins = (
                15
                38
                15
                38)
              ColorPaletteIndex = 13
              object UpDown10: TUpDown
                Left = 2
                Top = 13
                Width = 12
                Height = 21
                Min = -32000
                Max = 32000
                TabOrder = 0
                Wrap = True
                OnClick = UpDown10Click
              end
              object UpDown11: TUpDown
                Left = 2
                Top = 90
                Width = 21
                Height = 12
                Min = -32000
                Max = 32000
                Orientation = udHorizontal
                TabOrder = 1
                Wrap = True
                OnClick = UpDown11Click
              end
              object RzCheckBox1: TRzCheckBox
                Left = 186
                Top = 61
                Width = 37
                Height = 15
                Caption = 'Smt'
                State = cbUnchecked
                TabOrder = 2
                Transparent = True
                Visible = False
                OnClick = RzCheckBox1Click
              end
              object RzRadioGroup1: TRzRadioGroup
                Left = 120
                Top = 2
                Width = 109
                Height = 35
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'mS'
                  'R [K'#1054#1084']')
                TabOrder = 3
                Transparent = True
                OnChanging = RzRadioGroup1Changing
              end
              object SeriesR: TLineSeries
                Active = False
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Visible = False
                LinePen.Color = 10708548
                Pointer.Brush.Gradient.EndColor = 10708548
                Pointer.Gradient.EndColor = 10708548
                Pointer.InflateMargins = True
                Pointer.Style = psCircle
                Pointer.Visible = True
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object SimensSeries: TLineSeries
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Visible = False
                SeriesColor = 3661056
                LinePen.Color = 3661056
                Pointer.Brush.Gradient.EndColor = 3661056
                Pointer.Gradient.EndColor = 3661056
                Pointer.InflateMargins = True
                Pointer.Style = psCircle
                Pointer.Visible = True
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
              object ColorLineTool4: TColorLineTool
                Active = False
                DragRepaint = True
                Draw3D = False
                AxisID = 2
              end
              object CursorTool6: TCursorTool
                Active = False
                FollowMouse = True
              end
              object AnnotationTool5: TAnnotationTool
                Active = False
                AutoSize = False
                Callout.Brush.Color = clBlack
                Callout.Arrow.Visible = False
                Position = ppRightTop
                PositionUnits = muPercent
                Shape.Brush.Gradient.SubGradient.Transparency = 44
                Shape.Emboss.Color = clWhite
                Shape.Emboss.Transparency = 7
                Shape.Font.Height = -17
                Shape.Font.Name = 'Tahoma'
                Shape.Gradient.SubGradient.Transparency = 44
                Shape.Shadow.Visible = False
                Shape.Transparency = 35
                Shape.AutoSize = False
                Shape.Margins.Right = 18
                Shape.Text = '00.0000'
                Shape.TextAlignment = taCenter
                Text = '00.0000'
                TextAlignment = taCenter
                Height = 25
                Width = 116
              end
              object CursorTool7: TCursorTool
                Active = False
                FollowMouse = True
                Pen.Style = psDot
                Style = cssVertical
              end
              object AnnotationTool6: TAnnotationTool
                Active = False
                Callout.Brush.Color = clBlack
                Callout.Arrow.Visible = False
                Shape.Font.Height = -17
                Shape.Font.Name = 'Tahoma'
                Shape.Shadow.Visible = False
                Shape.Transparency = 35
                Shape.Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
                Shape.TextAlignment = taCenter
                Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
                TextAlignment = taCenter
              end
              object ChartTool7: TAxisScrollTool
              end
              object ChartTool11: TColorLineTool
                Active = False
                AxisID = 3
              end
            end
            object RzSplitter2: TRzSplitter
              Left = 0
              Top = 0
              Width = 236
              Height = 260
              Orientation = orVertical
              Position = 129
              UsePercent = True
              Align = alClient
              TabOrder = 0
              BarSize = (
                0
                129
                236
                133)
              UpperLeftControls = (
                Chart2)
              LowerRightControls = (
                CurrentTChart)
              object Chart2: TChart
                Left = 0
                Top = 0
                Width = 236
                Height = 129
                BackWall.Brush.Color = clWhite
                BackWall.Brush.Style = bsClear
                BackWall.Brush.Gradient.Direction = gdBottomTop
                BackWall.Brush.Gradient.EndColor = clWhite
                BackWall.Brush.Gradient.StartColor = 15395562
                BackWall.Brush.Gradient.Visible = True
                BackWall.Gradient.Direction = gdBottomTop
                BackWall.Gradient.EndColor = clWhite
                BackWall.Gradient.StartColor = 15395562
                BackWall.Gradient.Visible = True
                BackWall.Transparent = False
                Foot.Font.Name = 'Verdana'
                Gradient.Direction = gdBottomTop
                Gradient.EndColor = clWhite
                Gradient.MidColor = 15395562
                Gradient.StartColor = 15395562
                LeftWall.Color = 14745599
                Legend.Font.Name = 'Verdana'
                Legend.MaxNumRows = 0
                Legend.Visible = False
                MarginBottom = 0
                MarginTop = 3
                RightWall.Color = 14745599
                SubFoot.Font.Name = 'Verdana'
                SubTitle.Font.Name = 'Verdana'
                Title.Font.Name = 'Verdana'
                Title.Text.Strings = (
                  'TChart')
                Title.Visible = False
                BottomAxis.Automatic = False
                BottomAxis.AutomaticMaximum = False
                BottomAxis.AutomaticMinimum = False
                BottomAxis.Axis.Color = 4210752
                BottomAxis.Axis.Width = 1
                BottomAxis.AxisValuesFormat = '##0.###'
                BottomAxis.Grid.Color = 11119017
                BottomAxis.LabelsFont.Name = 'Verdana'
                BottomAxis.LabelsSize = 15
                BottomAxis.LabelStyle = talValue
                BottomAxis.Maximum = 10.000000000000000000
                BottomAxis.MaximumOffset = 1
                BottomAxis.MinimumOffset = 1
                BottomAxis.TicksInner.Color = 11119017
                BottomAxis.TickOnLabelsOnly = False
                BottomAxis.Title.Font.Name = 'Verdana'
                DepthAxis.Automatic = False
                DepthAxis.AutomaticMaximum = False
                DepthAxis.AutomaticMinimum = False
                DepthAxis.Axis.Color = 4210752
                DepthAxis.Axis.Width = 1
                DepthAxis.Grid.Color = 11119017
                DepthAxis.LabelsFont.Name = 'Verdana'
                DepthAxis.Maximum = 1.160000000000001000
                DepthAxis.Minimum = 0.160000000000000300
                DepthAxis.TicksInner.Color = 11119017
                DepthAxis.Title.Font.Name = 'Verdana'
                DepthTopAxis.Automatic = False
                DepthTopAxis.AutomaticMaximum = False
                DepthTopAxis.AutomaticMinimum = False
                DepthTopAxis.Axis.Color = 4210752
                DepthTopAxis.Axis.Width = 1
                DepthTopAxis.Grid.Color = 11119017
                DepthTopAxis.LabelsFont.Name = 'Verdana'
                DepthTopAxis.Maximum = 1.160000000000001000
                DepthTopAxis.Minimum = 0.160000000000000300
                DepthTopAxis.TicksInner.Color = 11119017
                DepthTopAxis.Title.Font.Name = 'Verdana'
                LeftAxis.Axis.Color = 4210752
                LeftAxis.Axis.Width = 1
                LeftAxis.AxisValuesFormat = '##0.###'
                LeftAxis.Grid.Color = 11119017
                LeftAxis.LabelsFont.Name = 'Verdana'
                LeftAxis.LabelsSize = 20
                LeftAxis.LabelStyle = talValue
                LeftAxis.MaximumOffset = 1
                LeftAxis.MinimumOffset = 1
                LeftAxis.TicksInner.Color = 11119017
                LeftAxis.TickOnLabelsOnly = False
                LeftAxis.Title.Font.Name = 'Verdana'
                RightAxis.Automatic = False
                RightAxis.AutomaticMaximum = False
                RightAxis.AutomaticMinimum = False
                RightAxis.Axis.Color = 4210752
                RightAxis.Axis.Width = 1
                RightAxis.Grid.Color = 11119017
                RightAxis.LabelsFont.Name = 'Verdana'
                RightAxis.TicksInner.Color = 11119017
                RightAxis.Title.Font.Name = 'Verdana'
                RightAxis.Visible = False
                TopAxis.Axis.Color = 4210752
                TopAxis.Axis.Width = 1
                TopAxis.Grid.Color = 11119017
                TopAxis.LabelsFont.Name = 'Verdana'
                TopAxis.TicksInner.Color = 11119017
                TopAxis.Title.Font.Name = 'Verdana'
                TopAxis.Visible = False
                View3D = False
                View3DWalls = False
                Align = alClient
                BevelInner = bvRaised
                BevelOuter = bvLowered
                TabOrder = 0
                OnResize = Chart2Resize
                PrintMargins = (
                  15
                  38
                  15
                  38)
                ColorPaletteIndex = 13
                object UpDown2: TUpDown
                  Left = 1
                  Top = 64
                  Width = 12
                  Height = 21
                  Min = -32000
                  Max = 32000
                  TabOrder = 0
                  Wrap = True
                  OnClick = UpDown2Click
                end
                object UpDown3: TUpDown
                  Left = 1
                  Top = 152
                  Width = 21
                  Height = 12
                  Min = -32000
                  Max = 32000
                  Orientation = udHorizontal
                  TabOrder = 1
                  Wrap = True
                  OnClick = UpDown3Click
                end
                object PointSeries1: TPointSeries
                  Active = False
                  Marks.Arrow.Visible = True
                  Marks.Callout.Brush.Color = clBlack
                  Marks.Callout.Arrow.Visible = True
                  Marks.Visible = False
                  Title = 'PointsI'
                  ClickableLine = False
                  Pointer.Brush.Gradient.EndColor = 10708548
                  Pointer.Gradient.EndColor = 10708548
                  Pointer.HorizSize = 5
                  Pointer.InflateMargins = True
                  Pointer.Style = psCross
                  Pointer.VertSize = 5
                  Pointer.Visible = True
                  XValues.Name = 'X'
                  XValues.Order = loAscending
                  YValues.Name = 'Y'
                  YValues.Order = loNone
                end
                object LineSeries1: TLineSeries
                  Marks.Arrow.Visible = True
                  Marks.Callout.Brush.Color = clBlack
                  Marks.Callout.Arrow.Visible = True
                  Marks.Visible = False
                  SeriesColor = clBlue
                  LinePen.Color = clBlue
                  Pointer.Brush.Gradient.EndColor = clBlue
                  Pointer.Gradient.EndColor = clBlue
                  Pointer.InflateMargins = True
                  Pointer.Style = psRectangle
                  Pointer.Visible = False
                  XValues.Name = 'X'
                  XValues.Order = loAscending
                  YValues.Name = 'Y'
                  YValues.Order = loNone
                end
                object ColorLineTool1: TColorLineTool
                  Active = False
                  DragRepaint = True
                  Draw3D = False
                  AxisID = 2
                end
                object CursorTool1: TCursorTool
                  Active = False
                  FollowMouse = True
                end
                object AnnotationTool1: TAnnotationTool
                  Active = False
                  AutoSize = False
                  Callout.Brush.Color = clBlack
                  Callout.Arrow.Visible = False
                  Position = ppRightTop
                  PositionUnits = muPercent
                  Shape.Brush.Gradient.SubGradient.Transparency = 44
                  Shape.Emboss.Color = clWhite
                  Shape.Emboss.Transparency = 7
                  Shape.Font.Height = -17
                  Shape.Font.Name = 'Tahoma'
                  Shape.Gradient.SubGradient.Transparency = 44
                  Shape.Shadow.Visible = False
                  Shape.Transparency = 35
                  Shape.AutoSize = False
                  Shape.Margins.Right = 18
                  Shape.Text = '00.0000'
                  Shape.TextAlignment = taCenter
                  Text = '00.0000'
                  TextAlignment = taCenter
                  Height = 25
                  Width = 116
                end
                object CursorTool2: TCursorTool
                  Active = False
                  FollowMouse = True
                  Pen.Style = psDot
                  Style = cssVertical
                end
                object AnnotationTool2: TAnnotationTool
                  Active = False
                  Callout.Brush.Color = clBlack
                  Callout.Arrow.Visible = False
                  Shape.Font.Height = -17
                  Shape.Font.Name = 'Tahoma'
                  Shape.Shadow.Visible = False
                  Shape.Transparency = 35
                  Shape.Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
                  Shape.TextAlignment = taCenter
                  Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
                  TextAlignment = taCenter
                end
                object AxisScrollTool3: TAxisScrollTool
                end
                object ColorBandTool1: TColorBandTool
                  Color = 12320699
                  DrawBehindAxes = True
                  EndValue = 7.000000000000000000
                  Pen.Color = clLime
                  StartValue = 3.000000000000000000
                  Transparency = 20
                  AxisID = 0
                end
              end
              object CurrentTChart: TChart
                Left = 0
                Top = 0
                Width = 236
                Height = 127
                BackWall.Brush.Color = clWhite
                BackWall.Brush.Style = bsClear
                BackWall.Brush.Gradient.Direction = gdBottomTop
                BackWall.Brush.Gradient.EndColor = clWhite
                BackWall.Brush.Gradient.StartColor = 15395562
                BackWall.Brush.Gradient.Visible = True
                BackWall.Gradient.Direction = gdBottomTop
                BackWall.Gradient.EndColor = clWhite
                BackWall.Gradient.StartColor = 15395562
                BackWall.Gradient.Visible = True
                BackWall.Transparent = False
                Foot.Font.Name = 'Verdana'
                Gradient.Direction = gdBottomTop
                Gradient.EndColor = clWhite
                Gradient.MidColor = 15395562
                Gradient.StartColor = 15395562
                LeftWall.Color = 14745599
                Legend.Font.Name = 'Verdana'
                Legend.MaxNumRows = 0
                Legend.Visible = False
                MarginBottom = 0
                MarginTop = 3
                RightWall.Color = 14745599
                SubFoot.Font.Name = 'Verdana'
                SubTitle.Font.Name = 'Verdana'
                Title.Font.Name = 'Verdana'
                Title.Text.Strings = (
                  'TChart')
                Title.Visible = False
                BottomAxis.Automatic = False
                BottomAxis.AutomaticMaximum = False
                BottomAxis.AutomaticMinimum = False
                BottomAxis.Axis.Color = 4210752
                BottomAxis.Axis.Width = 1
                BottomAxis.AxisValuesFormat = '##0.###'
                BottomAxis.Grid.Color = 11119017
                BottomAxis.LabelsFont.Name = 'Verdana'
                BottomAxis.LabelsSize = 15
                BottomAxis.LabelStyle = talValue
                BottomAxis.Maximum = 10.000000000000000000
                BottomAxis.MaximumOffset = 1
                BottomAxis.MinimumOffset = 1
                BottomAxis.TicksInner.Color = 11119017
                BottomAxis.TickOnLabelsOnly = False
                BottomAxis.Title.Font.Name = 'Verdana'
                DepthAxis.Automatic = False
                DepthAxis.AutomaticMaximum = False
                DepthAxis.AutomaticMinimum = False
                DepthAxis.Axis.Color = 4210752
                DepthAxis.Axis.Width = 1
                DepthAxis.Grid.Color = 11119017
                DepthAxis.LabelsFont.Name = 'Verdana'
                DepthAxis.Maximum = 1.160000000000001000
                DepthAxis.Minimum = 0.160000000000000300
                DepthAxis.TicksInner.Color = 11119017
                DepthAxis.Title.Font.Name = 'Verdana'
                DepthTopAxis.Automatic = False
                DepthTopAxis.AutomaticMaximum = False
                DepthTopAxis.AutomaticMinimum = False
                DepthTopAxis.Axis.Color = 4210752
                DepthTopAxis.Axis.Width = 1
                DepthTopAxis.Grid.Color = 11119017
                DepthTopAxis.LabelsFont.Name = 'Verdana'
                DepthTopAxis.Maximum = 1.160000000000001000
                DepthTopAxis.Minimum = 0.160000000000000300
                DepthTopAxis.TicksInner.Color = 11119017
                DepthTopAxis.Title.Font.Name = 'Verdana'
                LeftAxis.Axis.Color = 4210752
                LeftAxis.Axis.Width = 1
                LeftAxis.AxisValuesFormat = '##0.###'
                LeftAxis.Grid.Color = 11119017
                LeftAxis.LabelsFont.Name = 'Verdana'
                LeftAxis.LabelsSize = 20
                LeftAxis.LabelStyle = talValue
                LeftAxis.MaximumOffset = 1
                LeftAxis.MinimumOffset = 1
                LeftAxis.TicksInner.Color = 11119017
                LeftAxis.TickOnLabelsOnly = False
                LeftAxis.Title.Font.Name = 'Verdana'
                RightAxis.Automatic = False
                RightAxis.AutomaticMaximum = False
                RightAxis.AutomaticMinimum = False
                RightAxis.Axis.Color = 4210752
                RightAxis.Axis.Width = 1
                RightAxis.Grid.Color = 11119017
                RightAxis.LabelsFont.Name = 'Verdana'
                RightAxis.TicksInner.Color = 11119017
                RightAxis.Title.Font.Name = 'Verdana'
                RightAxis.Visible = False
                TopAxis.Axis.Color = 4210752
                TopAxis.Axis.Width = 1
                TopAxis.Grid.Color = 11119017
                TopAxis.LabelsFont.Name = 'Verdana'
                TopAxis.TicksInner.Color = 11119017
                TopAxis.Title.Font.Name = 'Verdana'
                TopAxis.Visible = False
                View3D = False
                View3DWalls = False
                Align = alClient
                BevelInner = bvRaised
                BevelOuter = bvLowered
                TabOrder = 0
                OnResize = CurrentTChartResize
                PrintMargins = (
                  15
                  38
                  15
                  38)
                ColorPaletteIndex = 13
                object UpDown12: TUpDown
                  Left = 1
                  Top = 64
                  Width = 12
                  Height = 21
                  Min = -32000
                  Max = 32000
                  TabOrder = 0
                  Wrap = True
                  OnClick = UpDown12Click
                end
                object UpDown13: TUpDown
                  Left = 1
                  Top = 152
                  Width = 21
                  Height = 12
                  Min = -32000
                  Max = 32000
                  Orientation = udHorizontal
                  TabOrder = 1
                  Wrap = True
                  OnClick = UpDown13Click
                end
                object RzSpinEdit1: TRzSpinEdit
                  Left = 176
                  Top = 8
                  Width = 55
                  Height = 21
                  Hint = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090' '#1086#1073#1083#1072#1089#1090#1080' '#1074' '#1082#1086#1090#1086#1088#1086#1081' '#1087#1088#1086#1080#1089#1093#1086#1076#1080#1090' '#1091#1089#1088#1077#1076#1085#1077#1085#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1081
                  Decimals = 2
                  Increment = 0.250000000000000000
                  Max = 10.000000000000000000
                  Min = 0.250000000000000000
                  Value = 3.000000000000000000
                  TabOrder = 2
                  OnChange = RzSpinEdit1Change
                end
                object PointSeries4: TPointSeries
                  Active = False
                  Marks.Arrow.Visible = True
                  Marks.Callout.Brush.Color = clBlack
                  Marks.Callout.Arrow.Visible = True
                  Marks.Visible = False
                  Title = 'PointsI'
                  ClickableLine = False
                  Pointer.Brush.Gradient.EndColor = 10708548
                  Pointer.Gradient.EndColor = 10708548
                  Pointer.HorizSize = 5
                  Pointer.InflateMargins = True
                  Pointer.Style = psCross
                  Pointer.VertSize = 5
                  Pointer.Visible = True
                  XValues.Name = 'X'
                  XValues.Order = loAscending
                  YValues.Name = 'Y'
                  YValues.Order = loNone
                end
                object Series1: TLineSeries
                  Marks.Arrow.Visible = True
                  Marks.Callout.Brush.Color = clBlack
                  Marks.Callout.Arrow.Visible = True
                  Marks.Visible = False
                  SeriesColor = clRed
                  LinePen.Color = clRed
                  Pointer.InflateMargins = True
                  Pointer.Style = psRectangle
                  Pointer.Visible = False
                  XValues.Name = 'X'
                  XValues.Order = loAscending
                  YValues.Name = 'Y'
                  YValues.Order = loNone
                end
                object ColorLineTool5: TColorLineTool
                  Active = False
                  DragRepaint = True
                  Draw3D = False
                  AxisID = 2
                end
                object CursorTool8: TCursorTool
                  Active = False
                  FollowMouse = True
                end
                object AnnotationTool3: TAnnotationTool
                  Active = False
                  AutoSize = False
                  Callout.Brush.Color = clBlack
                  Callout.Arrow.Visible = False
                  Position = ppRightTop
                  PositionUnits = muPercent
                  Shape.Brush.Gradient.SubGradient.Transparency = 44
                  Shape.Emboss.Color = clWhite
                  Shape.Emboss.Transparency = 7
                  Shape.Font.Height = -17
                  Shape.Font.Name = 'Tahoma'
                  Shape.Gradient.SubGradient.Transparency = 44
                  Shape.Shadow.Visible = False
                  Shape.Transparency = 35
                  Shape.AutoSize = False
                  Shape.Margins.Right = 18
                  Shape.Text = '00.0000'
                  Shape.TextAlignment = taCenter
                  Text = '00.0000'
                  TextAlignment = taCenter
                  Height = 25
                  Width = 116
                end
                object CursorTool9: TCursorTool
                  Active = False
                  FollowMouse = True
                  Pen.Style = psDot
                  Style = cssVertical
                end
                object AnnotationTool7: TAnnotationTool
                  Active = False
                  Callout.Brush.Color = clBlack
                  Callout.Arrow.Visible = False
                  Shape.Font.Height = -17
                  Shape.Font.Name = 'Tahoma'
                  Shape.Shadow.Visible = False
                  Shape.Transparency = 35
                  Shape.Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
                  Shape.TextAlignment = taCenter
                  Text = '00.000 '#1089'. 00.000 '#1084#1082#1040
                  TextAlignment = taCenter
                end
                object AxisScrollTool1: TAxisScrollTool
                end
                object ChartTool3: TColorBandTool
                  Color = 12320699
                  DrawBehindAxes = True
                  EndValue = 7.000000000000000000
                  Pen.Color = clLime
                  StartValue = 3.000000000000000000
                  Transparency = 20
                  AxisID = 0
                end
              end
            end
          end
        end
      end
    end
  end
  object AdvDockPanel1: TAdvDockPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 30
    MinimumSize = 3
    LockHeight = False
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    UseRunTimeHeight = True
    Version = '5.0.1.1'
    object AdvToolBar1: TAdvToolBar
      Left = 364
      Top = 1
      Width = 71
      Height = 28
      AllowFloating = False
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList2
      DisabledImages = ImageList3
      ParentOptionPicture = True
      ToolBarIndex = -1
      object ToolButton13: TAdvToolBarButton
        Left = 9
        Top = 2
        Width = 24
        Height = 24
        Hint = #1047#1072#1087#1080#1089#1100' / '#1089#1090#1086#1087' '#1079#1072#1087#1080#1089#1080' (E, R, I)'
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = ToolButton13Click
      end
      object ToolButton16: TAdvToolBarButton
        Left = 43
        Top = 2
        Width = 24
        Height = 24
        Hint = #1055#1088#1080#1086#1089#1090#1072#1085#1086#1074#1080#1090#1100' / '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = ToolButton16Click
      end
      object AdvToolBarSeparator1: TAdvToolBarSeparator
        Left = 33
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
    end
    object AdvToolBar2: TAdvToolBar
      Left = 437
      Top = 1
      Width = 180
      Height = 28
      AllowFloating = False
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList2
      DisabledImages = ImageList3
      ParentOptionPicture = True
      ToolBarIndex = -1
      object ToolButton19: TAdvToolBarButton
        Left = 152
        Top = 2
        Width = 24
        Height = 24
        Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1077#1090#1082#1091
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 5
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = ToolButton19Click
      end
      object RzColorEdit1: TRzColorEdit
        Left = 113
        Top = 2
        Width = 39
        Height = 24
        Hint = #1062#1074#1077#1090' '#1084#1077#1090#1082#1080
        CustomColors = RzCustomColors1
        DefaultColor = clBlack
        SelectedColor = clBlack
        ShowCustomColor = True
        ShowDefaultColor = True
        AutoSize = False
        DoubleBuffered = False
        FlatButtons = True
        FrameVisible = True
        ParentDoubleBuffered = False
        TabOrder = 0
      end
      object RzEdit1: TRzComboBox
        Left = 9
        Top = 2
        Width = 104
        Height = 24
        Margins.Top = 0
        Margins.Bottom = 0
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FlatButtons = True
        FrameVisible = True
        ParentCtl3D = False
        ParentFont = False
        Sorted = True
        TabOrder = 1
        OnKeyPress = RzEdit1KeyPress
      end
    end
    object AdvToolBar3: TAdvToolBar
      Left = 619
      Top = 1
      Width = 97
      Height = 28
      AllowFloating = False
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      ParentOptionPicture = True
      ToolBarIndex = -1
      object RzStatusPane4: TRzStatusPane
        Left = 9
        Top = 2
        Width = 84
        Height = 24
        Hint = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090#1072' ('#1054#1090' '#1074#1088#1077#1084#1077#1085#1080' '#1089#1086#1079#1076#1072#1085#1080#1103')'
        Transparent = False
        OnClick = RzStatusPane4Click
        Alignment = taCenter
      end
    end
    object AdvToolBar4: TAdvToolBar
      Left = 42
      Top = 1
      Width = 153
      Height = 28
      AllowFloating = False
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList2
      DisabledImages = ImageList3
      ParentOptionPicture = True
      ToolBarIndex = -1
      object AdvToolBarButton1: TAdvToolBarButton
        Left = 43
        Top = 2
        Width = 24
        Height = 24
        Hint = #1055#1088#1080#1085#1091#1076#1080#1090#1077#1083#1100#1085#1086' '#1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 8
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = Menu_Save_AsClick
      end
      object AdvToolBarButton2: TAdvToolBarButton
        Left = 67
        Top = 2
        Width = 24
        Height = 24
        Hint = #1054#1090#1082#1088#1099#1090#1100' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = N9Click
      end
      object AdvToolBarSeparator2: TAdvToolBarSeparator
        Left = 115
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
      object AdvToolBarButton3: TAdvToolBarButton
        Left = 125
        Top = 2
        Width = 24
        Height = 24
        Hint = #1047#1072#1082#1088#1099#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 6
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = Menu_ExitClick
      end
      object AdvToolBarButton5: TAdvToolBarButton
        Left = 9
        Top = 2
        Width = 24
        Height = 24
        Hint = #1053#1072#1095#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 14
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = Menu_NewClick
      end
      object AdvToolBarSeparator4: TAdvToolBarSeparator
        Left = 33
        Top = 2
        Width = 10
        Height = 24
        LineColor = clBtnShadow
      end
      object AdvToolBarButton6: TAdvToolBarButton
        Left = 91
        Top = 2
        Width = 24
        Height = 24
        Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' / '#1089#1082#1088#1099#1090#1100' '#1080#1085#1076#1080#1082#1072#1090#1086#1088#1099
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 10
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = ToolButton2Click
      end
    end
    object AdvToolBar5: TAdvToolBar
      Left = 3
      Top = 1
      Width = 37
      Height = 28
      AllowFloating = False
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList2
      DisabledImages = ImageList3
      ParentOptionPicture = True
      ToolBarIndex = -1
      object AdvToolBarButton4: TAdvToolBarButton
        Left = 9
        Top = 2
        Width = 24
        Height = 24
        Hint = #1053#1086#1074#1072#1103' '#1089#1077#1088#1080#1103
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 0
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = Menu_NewSeriaClick
      end
    end
    object AdvToolBar6: TAdvToolBar
      Left = 197
      Top = 1
      Width = 165
      Height = 28
      AllowFloating = False
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList2
      DisabledImages = ImageList3
      ParentOptionPicture = True
      ToolBarIndex = -1
      object ToolRun: TAdvToolBarButton
        Left = 9
        Top = 2
        Width = 24
        Height = 24
        Hint = #1057#1085#1103#1090#1100' '#1084#1075#1085#1086#1074#1077#1085#1085#1099#1077' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = ButtonRunClick
      end
      object ToolLine: TAdvToolBarButton
        Left = 33
        Top = 2
        Width = 24
        Height = 24
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 11
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Style = tasCheck
        Version = '5.0.1.1'
        OnClick = ToolCursClick
      end
      object ToolX: TAdvToolBarButton
        Left = 57
        Top = 2
        Width = 24
        Height = 24
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 12
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Style = tasCheck
        Version = '5.0.1.1'
        OnClick = ToolCursClick
      end
      object ToolButton9: TAdvToolBarButton
        Left = 137
        Top = 2
        Width = 24
        Height = 24
        Hint = #1059#1082#1072#1079#1072#1090#1100' '#1085#1072#1095#1072#1083#1086' '#1086#1090#1089#1095#1077#1090#1072
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 13
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Style = tasCheck
        Version = '5.0.1.1'
        OnClick = ToolButton9Click
      end
      object Edit4: TEdit
        Left = 81
        Top = 2
        Width = 56
        Height = 24
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0.0000'
        OnChange = Edit4Change
        OnExit = Edit4Exit
      end
    end
    object AdvToolBar7: TAdvToolBar
      Left = 718
      Top = 1
      Width = 112
      Height = 28
      AllowFloating = False
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      CompactImageIndex = -1
      ShowRightHandle = False
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      Images = ImageList2
      DisabledImages = ImageList3
      ParentOptionPicture = True
      ToolBarIndex = -1
      object AdvToolBarButton7: TAdvToolBarButton
        Left = 9
        Top = 2
        Width = 24
        Height = 24
        Hint = #1047#1072#1087#1091#1089#1090#1080#1090#1100' / '#1086#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1089#1077#1082#1091#1085#1076#1086#1084#1077#1088
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        ParentShowHint = False
        Position = daTop
        ShowHint = True
        Version = '5.0.1.1'
        OnClick = AdvToolBarButton7Click
      end
      object RzStatusPane5: TRzStatusPane
        Left = 33
        Top = 2
        Width = 75
        Height = 24
        Transparent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Alignment = taCenter
        Caption = '0:00:00'
      end
    end
  end
  object MainMenu1: TMainMenu
    Images = ToolBarImageList
    Left = 224
    Top = 248
    object Menu_File: TMenuItem
      Caption = #1060#1072#1081#1083
      OnClick = Menu_FileClick
      object N7: TMenuItem
        Caption = #1069#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090
        ImageIndex = 32
        object N8: TMenuItem
          Caption = #1053#1086#1074#1099#1081
          ImageIndex = 4
          OnClick = Menu_NewClick
        end
        object N9: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100'...'
          ImageIndex = 0
          OnClick = N9Click
        end
        object N10: TMenuItem
          Caption = #1047#1072#1082#1088#1099#1090#1100
          Visible = False
          OnClick = N10Click
        end
      end
      object N2: TMenuItem
        Caption = #1057#1077#1088#1080#1103
        object N3: TMenuItem
          Caption = #1053#1086#1074#1072#1103
          ImageIndex = 24
          OnClick = Menu_NewSeriaClick
        end
        object N13: TMenuItem
          Caption = '-'
        end
        object N4: TMenuItem
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Enabled = False
          Visible = False
        end
        object N5: TMenuItem
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100
          ImageIndex = 18
          OnClick = MenuClearClick
        end
        object N6: TMenuItem
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Enabled = False
          Visible = False
        end
      end
      object Menu_Comment: TMenuItem
        Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1081
        ImageIndex = 36
        OnClick = Menu_CommentClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MenuReset: TMenuItem
        Caption = #1056#1077#1089#1090#1072#1088#1090' '#1087#1088#1080#1073#1086#1088#1072
        ImageIndex = 40
        OnClick = MenuResetClick
      end
      object Menu__1: TMenuItem
        Caption = '-'
      end
      object Menu_Print: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
        Enabled = False
        OnClick = Menu_PrintClick
      end
      object Menu_Separator1: TMenuItem
        Caption = '-'
      end
      object Menu_Exit: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ImageIndex = 16
        OnClick = Menu_ExitClick
      end
    end
    object N12: TMenuItem
      Caption = #1057#1072#1084#1086#1087#1080#1089#1077#1094
      Visible = False
      OnClick = N12Click
    end
    object Menu_Edit: TMenuItem
      Caption = '&'#1055#1088#1072#1074#1082#1072
      object fft1: TMenuItem
        Caption = 'fft'
        Visible = False
        OnClick = fft1Click
      end
      object N11: TMenuItem
        Caption = #1057#1075#1083#1072#1078#1080#1074#1072#1085#1080#1077
        OnClick = N11Click
      end
      object Menu_Delete: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = Menu_DeleteClick
      end
    end
    object Menu_Options: TMenuItem
      Caption = '&'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      OnClick = Menu_OptionsClick
    end
    object N14: TMenuItem
      Caption = '?'
      object N15: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        ImageIndex = 54
        OnClick = N15Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'|*.bn|'#1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt'
    OnTypeChange = OpenDialog1TypeChange
    Left = 288
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'|*.bn|'#1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099'|*.txt'
    OnTypeChange = SaveDialog1TypeChange
    Left = 288
    Top = 200
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 224
    Top = 344
  end
  object XPManifest1: TXPManifest
    Left = 224
    Top = 392
  end
  object RzRegIniFile1: TRzRegIniFile
    Left = 288
    Top = 296
  end
  object RzFormState1: TRzFormState
    RegIniFile = RzRegIniFile1
    Left = 288
    Top = 344
  end
  object ToolBarImageList: TImageList
    Left = 352
    Top = 200
    Bitmap = {
      494C0101380090006C0210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080807F0000000000000000000000000000000000000000EFEFFF102020
      FFDFEFEFFF100000000000000000000000000000000000000000000000000000
      00008080807F0000000000000000000000000000000000000000EFEFFF102020
      FFDFEFEFFF10000000000000000000000000000000000000000000000000E5E5
      E500C0C0C000666666004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C008080
      8000CCCCCC00E2EFF1000000000000000000000000000000000000000000CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00E2EFF10000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000005050FFAF0000
      FFFF5050FFAF0000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000005050FFAF0000
      FFFF5050FFAF0000000000000000000000000000000000000000E5E5E500B2B2
      B200ECC6D900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500C0C0C0004C4C
      4C00646F7100B2B2B200E5E5E500000000000000000000000000CCCCCC009999
      9900ECC6D900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990099999900B2B2B200CCCCCC00000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000AFAFFF505050FFAF0000
      FFFF5050FFAFAFAFFF5000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000AFAFFF505050FFAF0000
      FFFF5050FFAFAFAFFF50000000000000000000000000E5E5E500C0C0C000E5E5
      E500FFFFFF00E5E5E500CC999900CC999900CCCCCC00E2EFF100FFFFFF00E5E5
      E5008080800066666600B2B2B200E2EFF10000000000CCCCCC0099999900CCCC
      CC00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00E2EFF100FFFFFF00CCCC
      CC009999990099999900B2B2B200E2EFF1000000000000000000000000000000
      0000000000FF000000000000000000000000EFEFFF100000FFFFEFEFFF100000
      FFFFEFEFFF100000FFFFEFEFFF10000000000000000000000000000000000000
      0000000000FF000000000000000000000000EFEFFF100000FFFFEFEFFF100000
      FFFFEFEFFF100000FFFFEFEFFF100000000000000000CCCCCC00E5E5E500FFFF
      FF00CC999900CC660000CC663300CC999900CC663300CC663300CC999900FFFF
      FF00E5E5E500646F7100646F7100CCCCCC000000000099999900CCCCCC00FFFF
      FF00CCCCCC009999990099999900CCCCCC009999990099999900CCCCCC00FFFF
      FF00CCCCCC009999990099999900CCCCCC000000000000000000000000000000
      0000000000FF0000000000000000000000005050FFAFAFAFFF50000000000000
      FFFF00000000AFAFFF505050FFAF000000000000000000000000000000000000
      0000000000FF0000000000000000000000005050FFAFAFAFFF50000000000000
      FFFF00000000AFAFFF505050FFAF00000000E5E5E500E5E5E500FFFFFF00CC66
      6600CC330000CC660000CC999900FFFFFF00CC996600CC330000CC330000CC99
      9900FFFFFF00E5E5E5004C4C4C0099999900CCCCCC0099999900FFFFFF00CCCC
      CC009999990099999900CCCCCC00FFFFFF00999999009999990099999900CCCC
      CC00FFFFFF00CCCCCC0099999900999999000000000000000000000000000000
      0000000000FF0000000000000000AFAFFF505050FFAF00000000000000000000
      FFFF00000000000000005050FFAFAFAFFF500000000000000000000000000000
      0000000000FF0000000000000000AFAFFF505050FFAF00000000000000000000
      FFFF00000000000000005050FFAFAFAFFF50E5E5E500FFFFFF00CC999900CC33
      0000CC663300CC663300CC663300CC996600CC663300CC663300CC663300CC33
      0000CCCCCC00E5E5E500999999006666660099999900FFFFFF00CCCCCC009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC0099999900999999000000000000000000000000000000
      0000000000FF00000000000000008080FF7FEFEFFF1000000000000000000000
      FFFF0000000000000000EFEFFF108080FF7F0000000000000000000000000000
      0000000000FF00000000000000008080FF7FEFEFFF1000000000000000000000
      FFFF0000000000000000EFEFFF108080FF7FE5E5E500FFFFFF00CC663300CC66
      3300CC663300CC663300CC996600E5E5E500CC663300CC663300CC663300CC66
      3300CC666600FFFFFF00CCCCCC004C4C4C0099999900FFFFFF00999999009999
      9900999999009999990099999900CCCCCC009999990099999900999999009999
      9900CCCCCC00FFFFFF00CCCCCC00999999000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      FFFF00000000000000000000000000000000E5E5E500E5E5E500CC663300CC66
      3300CC663300CC663300CC996600FFFFFF00FF999900CC330000CC663300CC66
      3300CC663300E2EFF100E5E5E5004C4C4C0099999900CCCCCC00999999009999
      9900999999009999990099999900FFFFFF00CCCCCC0099999900999999009999
      990099999900E2EFF100CCCCCC00999999000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      FFFF00000000000000000000000000000000E5E5E500FFCCCC00CC663300CC66
      3300CC663300CC663300CC663300CCCC9900FFFFFF00CC996600CC663300CC66
      3300CC663300E2EFF100E5E5E5004C4C4C0099999900FFCCCC00999999009999
      9900999999009999990099999900CCCCCC00FFFFFF0099999900999999009999
      990099999900E2EFF100CCCCCC00999999008080807FEFEFEF10000000000000
      0000000000FF0000000000000000EFEFEF108080807F00000000000000000000
      FFFF000000000000000000000000000000008080807FEFEFEF10000000000000
      0000000000FF0000000000000000EFEFEF108080807F00000000000000000000
      FFFF00000000000000000000000000000000E5E5E500E5E5E500CC663300CC66
      3300CC663300CC663300CC663300CC330000CCCCCC00FFFFFF00CC663300CC66
      3300CC663300FFFFFF00E5E5E5006666660099999900CCCCCC00999999009999
      990099999900999999009999990099999900CCCCCC00FFFFFF00999999009999
      990099999900FFFFFF00CCCCCC0099999900AFAFAF50505050AF000000000000
      0000000000FF0000000000000000505050AFAFAFAF5000000000000000000000
      FFFF00000000000000000000000000000000AFAFAF50505050AF000000000000
      0000000000FF0000000000000000505050AFAFAFAF5000000000000000000000
      FFFF00000000000000000000000000000000E5E5E500FFFFFF00FF996600CC66
      3300CC996600E5E5E500CC666600CC330000CC996600FFFFFF00CC996600CC66
      0000CC996600FFFFFF00CCCCCC0099A8AC0099999900FFFFFF00999999009999
      990099999900CCCCCC00CCCCCC009999990099999900FFFFFF00999999009999
      990099999900FFFFFF00CCCCCC0099A8AC0000000000505050AFAFAFAF500000
      0000000000FF00000000AFAFAF50505050AF0000000000000000000000000000
      FFFF0000000000000000000000000000000000000000505050AFAFAFAF500000
      0000000000FF00000000AFAFAF50505050AF0000000000000000000000000000
      FFFF00000000000000000000000000000000E5E5E500E2EFF100FFFFCC00FF99
      3300CC996600FFFFFF00FFFFFF00FFCC9900FFFFFF00FFFFFF00CC663300FF66
      3300FFFFFF00E5E5E50099999900E5E5E50099999900E2EFF100CCCCCC009999
      990099999900FFFFFF00FFFFFF00CCCCCC00FFFFFF00FFFFFF00999999009999
      9900FFFFFF00CCCCCC0099999900CCCCCC0000000000EFEFEF10000000FFEFEF
      EF10000000FFEFEFEF10000000FFEFEFEF100000000000000000000000000000
      FFFF0000000000000000000000000000000000000000EFEFEF10000000FFEFEF
      EF10000000FFEFEFEF10000000FFEFEFEF100000000000000000000000000000
      FFFF0000000000000000000000000000000000000000E5E5E500FFFFFF00F2EA
      BF00FF996600FF999900E5E5E500E2EFF100E5E5E500FF996600FF996600FFCC
      CC00FFFFFF00F2EABF00C0C0C000000000000000000099999900FFFFFF00CCCC
      CC0099999900CCCCCC00CCCCCC00E2EFF100CCCCCC009999990099999900FFCC
      CC00FFFFFF00CCCCCC0099999900000000000000000000000000AFAFAF505050
      50AF000000FF505050AFAFAFAF50000000000000000000000000000000000000
      FFFF000000000000000000000000000000000000000000000000AFAFAF505050
      50AF000000FF505050AFAFAFAF50000000000000000000000000000000000000
      FFFF0000000000000000000000000000000000000000E5E5E500E5E5E500FFFF
      FF00FFFFFF00FFFFCC00FFCC9900FFCC9900FFCC9900FFCC9900FFFFFF00FFFF
      FF00E5E5E500C0C0C000E2EFF10000000000000000000000000099999900FFFF
      FF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFF
      FF00CCCCCC0099999900E2EFF100000000000000000000000000000000005050
      50AF000000FF505050AF00000000000000000000000000000000000000000000
      FFFF000000000000000000000000000000000000000000000000000000005050
      50AF000000FF505050AF00000000000000000000000000000000000000000000
      FFFF000000000000000000000000000000000000000000000000E5E5E500FFCC
      CC00E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5E500FFCC
      CC00CCCCCC00E2EFF10000000000000000000000000000000000000000009999
      990099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00999999009999
      990099999900E2EFF1000000000000000000000000000000000000000000EFEF
      EF10202020DFEFEFEF1000000000000000000000000000000000000000008080
      FF7F00000000000000000000000000000000000000000000000000000000EFEF
      EF10202020DFEFEFEF1000000000000000000000000000000000000000008080
      FF7F000000000000000000000000000000000000000000000000000000000000
      0000E5E5E500FFCCCC00FFCCCC00FFCCCC00F2EABF00FFCCCC00E5E5E500E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC009999990099999900999999009999990099999900CCCCCC00CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000003333330066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000E7180000E7180000E7180000E7
      180000E7180000E7180000E7180000E7180000E7180000E7180000E7180000E7
      180000E7180000E7180000E7180000E7180000E7180000E7180000E7180000E7
      180000E7180000E7180000E7180000E7180000E7180000E7180000E7180000E7
      180000E7180000E7180000E7180000E718000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E71800000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E71800000000000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099330000663300006633
      000000000000000000000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099999900666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009933000099330000993300009933
      0000663300000000000000000000000000000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009999990099999900999999009999
      9900666666000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00993300009933000099330000993300009933
      0000993300006633000000000000000000000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00999999009999990099999900999999009999
      9900999999006666660000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      000099999900FFFFFF0099330000CC6633009933000099330000993300009933
      0000993300009933000066330000000000000000000000000000000000000000
      000099999900FFFFFF0099999900CCCCCC009999990099999900999999009999
      9900999999009999990066666600000000000000E7000000E7000000E7000000
      E7000000E7000000E7000000E7000000E7000000E7000000E7000000E7000000
      E70000E718000000E7000000E7000000E7000000E7000000E7000000E7000000
      E7000000E7000000E7000000E7000000E7000000E7000000E7000000E7000000
      E70000E718000000E7000000E7000000E7000000000000000000000000000000
      00009999990099330000CC66330099330000CC66330099330000993300009933
      0000993300009933000099330000663300000000000000000000000000000000
      00009999990099999900CCCCCC0099999900CCCCCC0099999900999999009999
      9900999999009999990099999900666666000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66330099330000CC663300993300009933
      0000993300009933000099330000993300000000000000000000000000000000
      0000000000009999990099999900CCCCCC0099999900CCCCCC00999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      000000000000993300009933000099330000CC66330099330000CC6633009933
      0000993300009933000099330000999999000000000000000000000000000000
      000000000000999999009999990099999900CCCCCC0099999900CCCCCC009999
      9900999999009999990099999900999999000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000000000000000993300009933000099330000CC66330099330000CC66
      3300993300009933000099999900999999000000000000000000000000000000
      00000000000000000000999999009999990099999900CCCCCC0099999900CCCC
      CC00999999009999990099999900999999000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000CC6633009933
      000099330000CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900CCCCCC009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      00000000E7000000000000000000000000000000000000000000000000000000
      000000E718000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600000000
      00000000000000000000000000000000000000000000CCCCCC00999999009999
      9900999999009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      000000000000000000000000000000000000CCCCCC0099999900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000CCCCCC0099999900E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      000000000000000000000000000000000000CCCCCC0099999900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      000000000000000000000000000000000000CCCCCC0099999900E5E5E500E5E5
      E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000CCCCCC0099999900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900000000000000000000000000000000000000000000000000000099000000
      CC000000CC000000CC000000CC000000CC00000099000000CC00000099000000
      990000009900000099000000000000000000000000000000000099999900B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B200999999009999
      990099999900999999000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      000000000000000000000000000000000000CCCCCC0099999900E5E5E500E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000099000000
      FF000000CC000000CC000000CC000000CC000000CC00000099000000CC000000
      990000009900000099000000000000000000000000000000000099999900CCCC
      CC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B2009999
      990099999900999999000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000CCCCCC0099999900FFFFFF00FFFF
      FF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900000000000000000000000000000000000000000000000000000099000000
      CC000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      CC0000009900000099000000000000000000000000000000000099999900B2B2
      B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2
      B20099999900999999000000000000000000FF990000CC660000E5E5E500E5E5
      E500CCCCCC00CCCCCC00CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CCCCCC0099999900E5E5E500E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000099000000
      FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC000000
      99000000CC00000099000000000000000000000000000000000099999900CCCC
      CC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B2009999
      9900B2B2B200999999000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00E5E5E500CC660000FF990000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000CCCCCC0099999900FFFFFF00FFFF
      FF00E5E5E50099999900CCCCCC00999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000099000000
      FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000
      CC0000009900000099000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B20099999900999999000000000000000000FF990000CC660000E5E5E500CCCC
      CC00FF990000FF990000FF990000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC66000000000000CCCCCC0099999900E5E5E500CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900999999009999
      9900999999009999990099999900000000000000000000000000000099009999
      FF000000FF000000FF000000CC000000FF000000CC000000CC000000CC000000
      CC000000CC00000099000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200999999000000000000000000FF990000CC660000FFFFFF00FF99
      0000FF996600FF996600FF990000FF990000FF990000FF990000FF990000CC66
      0000CC660000CC6600000000000000000000CCCCCC0099999900FFFFFF00CCCC
      CC00E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900999999009999990000000000000000000000000000000000000099009999
      FF009999FF000000FF000000FF000000CC000000FF000000CC000000CC000000
      CC000000CC00000099000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2
      B200B2B2B200999999000000000000000000FF990000CC660000FF990000FF99
      6600FF996600FF996600FF996600FF996600FF990000FF990000FF990000FF99
      0000CC660000000000000000000000000000CCCCCC0099999900CCCCCC00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900000000000000000000000000FF990000FF990000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF990000CC66
      000000000000000000000000000000000000CCCCCC00CCCCCC00E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF99000099999900FFFF
      FF0099999900FFFFFF0099999900FFFFFF0099999900FFFFFF0099999900FFFF
      FF000000000000000000000000000000000000000000CCCCCC0099999900FFFF
      FF0099999900FFFFFF0099999900FFFFFF0099999900FFFFFF0099999900FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC00999999000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900E5E5E5009999990000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900E5E5E5009999990000000000000000000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900999999009999990099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC009999990099999900999999009999
      9900000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0000669900000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CC
      FF006699FF006699FF00CCCCFF000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500CCCCCC00CCCCCC000000000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900E5E5E500CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CCFF000033
      FF003399FF003366FF000033FF009999FF0099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900CCCCCC00000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC0099CCFF003399
      FF0033CCFF0033CCFF003399FF0099CCFF0099999900E5E5E500E5E5E5009999
      9900999999009999990099999900999999009999990099999900E5E5E500CCCC
      CC009999990099999900CCCCCC000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500CCCCCC00CCCCCC009999990099999900999999009999
      9900000000000000000000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CCFF003366FF000066
      FF00CCFFFF0099FFFF003366FF003366FF0099999900E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00E5E5E500E5E5E500CCCCCC00CCCCCC0000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC0099999900000000000000
      000000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF003399CC003399CC003399CC003399CC003399CC000033
      FF000033FF003399FF000033FF00CCCCFF000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E50099999900999999009999990099999900999999009999
      990099999900CCCCCC0099999900000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00999999000000
      00000000000000000000000000000000000000000000000000003399CC003399
      CC003399CC003399CC00000000000000000000000000000000000033FF0099CC
      FF000033FF006699FF009999FF0099CCFF000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000999999000000
      000099999900CCCCCC00CCCCCC00000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC00000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099CCFF0099CCFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0000000000000000000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C6390000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C6390000000000000000000000000000000000CC
      0000009900000099000000660000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200999999009999990080808000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6395C5C5CA3E4E4E41BFDFD
      FD020000000000000000000000000000000000000000000000FF000000FF0000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C639C6C6C6395C5C5CA3E4E4E41BFDFD
      FD020000000000000000000000000000000000000000000000FF000000FF0000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C639000000000000000000CC00000099
      0000009900000099000000990000006600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2009999
      9900999999009999990099999900808080000000000000000000000000000000
      0000000000000000000000000000000000005A5A5AA5E4E4E41B000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000000000000000E4E4E41B5A5A5AA55A5A5AA5E4E4E41B000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000000000000000E4E4E41B5A5A5AA50000000000CC0000009900000099
      0000009900000099000000990000009900000066000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      9900999999009999990099999900999999008080800000000000000000000000
      000000000000000000000000000000000000000000FFFDFDFD02000000000000
      000000000000000000008080FF7FD8D8FF2700000000D8D8FF278080FF7F0000
      00000000000000000000FDFDFD02000000FF000000FFFDFDFD02000000000000
      000000000000000000008080FF7FD8D8FF2700000000D8D8FF278080FF7F0000
      00000000000000000000FDFDFD02000000FF0000000000CC0000009900000099
      00000066000000CC000000990000009900000099000000660000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      990080808000B2B2B20099999900999999009999990080808000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      00000000000000000000D8D8FF270000FFFFB6B6FF490000FFFFD8D8FF270000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      00000000000000000000D8D8FF270000FFFFB6B6FF490000FFFFD8D8FF270000
      0000000000000000000000000000000000FF0000000000CC0000009900000066
      0000000000000000000000CC0000009900000099000000990000006600000000
      00000000000000000000000000000000000000000000B2B2B200999999008080
      80000000000000000000B2B2B200999999009999990099999900808080000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000B6B6FF490000FFFFB6B6FF49000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000B6B6FF490000FFFFB6B6FF49000000000000
      0000000000000000000000000000000000FF0000000000CC0000006600000000
      000000000000000000000000000000CC00000099000000990000009900000066
      00000000000000000000000000000000000000000000B2B2B200808080000000
      0000000000000000000000000000B2B2B2009999990099999900999999008080
      800000000000000000000000000000000000000000FFFDFDFD02000000000000
      00000000000000000000D8D8FF270000FFFFB6B6FF490000FFFFD8D8FF270000
      00000000000000000000FDFDFD02000000FF000000FFFDFDFD02000000000000
      00000000000000000000D8D8FF270000FFFFB6B6FF490000FFFFD8D8FF270000
      00000000000000000000FDFDFD02000000FF0000000000000000000000000000
      00000000000000000000000000000000000000CC000000990000009900000099
      0000006600000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B2B20099999900999999009999
      9900808080000000000000000000000000005A5A5AA5E4E4E41B000000000000
      000000000000000000008080FF7FD8D8FF2700000000D8D8FF278080FF7F0000
      00000000000000000000E4E4E41B5A5A5AA55A5A5AA5E4E4E41B000000000000
      000000000000000000008080FF7FD8D8FF2700000000D8D8FF278080FF7F0000
      00000000000000000000E4E4E41B5A5A5AA50000000000000000000000000000
      0000000000000000000000000000000000000000000000CC0000009900000099
      0000009900000066000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      990099999900808080000000000000000000C6C6C6395C5C5CA3E4E4E41BFDFD
      FD0200000000FFFFFF0000000000000000000000000000000000000000000000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C639C6C6C6395C5C5CA3E4E4E41BFDFD
      FD0200000000FFFFFF0000000000000000000000000000000000000000000000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C6390000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CC00000099
      0000009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2009999
      99009999990080808000000000000000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C6390000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C639000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      0000009900000066000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200999999008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C6390000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C639000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      000000000000000000000000000000000000C6C6C6395C5C5CA3E4E4E41BFDFD
      FD020000000000000000000000000000000000000000000000FF000000FF0000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C639C6C6C6395C5C5CA3E4E4E41BFDFD
      FD020000000000000000000000000000000000000000000000FF000000FF0000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C6390000000000000000000000009933
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      99009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000005A5A5AA5E4E4E41B000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000000000000000E4E4E41B5A5A5AA55A5A5AA5E4E4E41B000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000000000000000E4E4E41B5A5A5AA50000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      000000000000000000000000000000000000000000FFFDFDFD02000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02000000FF000000FFFDFDFD02000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02000000FF0000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000000000FFFDFDFD02000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02000000FF000000FFFDFDFD02000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02000000FF0000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000005A5A5AA5E4E4E41B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E4E41B5A5A5AA55A5A5AA5E4E4E41B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E4E41B5A5A5AA50000000000000000000000009933
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      99009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      000000000000000000000000000000000000C6C6C6395C5C5CA3E4E4E41BFDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C639C6C6C6395C5C5CA3E4E4E41BFDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD02E4E4E41B5C5C5CA3C6C6C6390000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C6390000000000000000C6C6C6395A5A5AA50000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF5A5A5AA5C6C6C639000000000000000000000000000000000000
      00000000000099330000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300000000000000000000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000993300000000000099330000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00999999000000000099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000009900000099
      0000009900000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC6600009933000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC009999990099999900CCCCCC00CCCCCC00999999000000
      00000000000000000000000000000000000000000000000000000099000000CC
      000000CC000000CC000000CC000000CC00000099000000CC0000009900000099
      000000990000009900000000000000000000000000000000000099999900B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B200999999009999
      9900999999009999990000000000000000000000000099330000993300009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000000000000099000000FF
      000000CC000000CC000000CC000000CC000000CC00000099000000CC00000099
      000000990000009900000000000000000000000000000000000099999900CCCC
      CC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B2009999
      9900999999009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC66000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000000000000099000000CC
      000000FF000000CC000000CC000000CC000000CC000000CC00000099000000CC
      000000990000009900000000000000000000000000000000000099999900B2B2
      B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2
      B200999999009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCC
      CC00CCCCCC0099999900000000000000000000000000000000000099000000FF
      000000CC000000FF000000CC000000CC000000CC000000CC000000CC00000099
      000000CC0000009900000000000000000000000000000000000099999900CCCC
      CC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B2009999
      9900B2B2B2009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC66000099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCC
      CC00CCCCCC00CCCCCC00999999000000000000000000000000000099000000FF
      000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC
      000000990000009900000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200999999009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCC
      CC00CCCCCC0099999900000000000000000000000000000000000099000099FF
      990000FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC
      000000CC0000009900000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B2009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC66000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000000000000099000099FF
      990099FF990000FF000000FF000000CC000000FF000000CC000000CC000000CC
      000000CC0000009900000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2
      B200B2B2B2009999990000000000000000000000000099330000993300009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000009900000099
      0000009900000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC6600009933000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC009999990099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000993300000000000099330000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00999999000000000099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300000000000000000000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F10000000000CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2EFF100E5E5E500B2B2
      B200CC9999009966660099666600B2B2B200CCCCCC00E5E5E500E2EFF1000000
      00000000000000000000000000000000000000000000E2EFF10000000000B2B2
      B200999999009999990099999900B2B2B200CCCCCC0000000000E2EFF1000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800000009900000099000000990000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800066666600666666006666660000000000000000000000
      000000000000000000000000000000000000E5E5E500CC99990099666600CC99
      9900CC999900FFFFFF00996666009999990099999900B2B2B200E5E5E5000000
      0000000000000000000000000000000000000000000099999900999999009999
      990099999900FFFFFF00999999009999990099999900B2B2B200000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080000000CC0000009900000099000000990000009900000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080009999990066666600666666006666660066666600000000000000
      00000000000000000000000000000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600336699003366990033669900E2EFF1000000
      0000000000000000000000000000000000009999990099999900C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900999999009999990099999900E2EFF1000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000CC000000CC000000CC00000099000000990000009900000099000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00999999009999990099999900666666006666660066666600666666000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCCC000099CC00FFFFFF00FFCC
      CC000000000000000000000000000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900C0C0C000C0C0C00099999900FFFFFF00CCCC
      CC0000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      00000000FF000000CC000000CC000000CC000000990000009900000099000099
      990000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000CCCCCC009999990099999900999999006666660066666600666666006666
      66000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCFF003399CC00FFCCCC00CC66
      00000000000000000000000000000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900C0C0C000CCCCCC0099999900CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000CC000000CC000000CC00000099000099990000CC
      CC00009999000000000000000000000000000000000000000000000000000000
      0000CCCCCC00CCCCCC0099999900999999009999990066666600666666009999
      99006666660000000000000000000000000099666600FFCC9900CC999900CC99
      6600FFCCCC00FFFFFF009966660099CCCC0099CCFF00B2B2B200FF660000CC66
      00000000000000000000000000000000000099999900C0C0C000999999009999
      9900CCCCCC00FFFFFF0099999900CCCCCC00CCCCCC00B2B2B200999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000CC000000CC000099990000CCCC0000CC
      CC0000CCCC000099990000000000000000000000000000000000000000000000
      000000000000CCCCCC00CCCCCC00999999009999990066666600999999009999
      99009999990066666600000000000000000099666600FFCC990099666600FFFF
      FF00FFCCCC00FFFFFF009966660099CCCC00C0C0C000CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000099999900C0C0C00066666600FFFF
      FF00CCCCCC00FFFFFF0099999900CCCCCC00C0C0C00099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      000000000000000000000000FF000000800000CCCC0000FFFF0000FFFF0000CC
      CC0000CCCC0000CCCC0000999900000000000000000000000000000000000000
      00000000000000000000CCCCCC006666660099999900CCCCCC00CCCCCC009999
      99009999990099999900666666000000000099666600FFCC9900CC9999009966
      6600FFCCCC00FFFFFF009966660000000000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000099999900C0C0C000999999006666
      6600CCCCCC00FFFFFF0099999900E5E5E5009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      000000000000000000000000000000CCCC0000FFFF00FFFFFF00C0C0C00000FF
      FF0000CCCC0000CCCC0000CCCC00009999000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00FFFFFF00C0C0C000CCCC
      CC009999990099999900999999006666660099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660000000000CC999900CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900E5E5E5009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      00000000000000000000000000000000000000CCCC0000FFFF00FFFFFF00C0C0
      C00000FFFF0000CCCC0000999900993300000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00FFFFFF00C0C0
      C000CCCCCC0099999900666666006666660099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00E2EFF100CC999900FF660000CC66
      00000000000000000000000000000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900CCCCCC00E2EFF10099999900999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CCCC0000FFFF00FFFF
      FF0000FFFF0000999900CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00FFFF
      FF00CCCCCC0066666600999999006666660099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660099CCCC000000000099CCCC00FFCC9900CC66
      00000000000000000000000000000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900CCCCCC00E5E5E500CCCCCC00C0C0C0009999
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CCCC0000FF
      FF0000CCCC00CC660000CC660000CC6600000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC009999990099999900999999009999990099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00000000003399CC0000000000FFCC
      9900000000000000000000000000000000009999990099999900C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900CCCCCC00E5E5E5009999990000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      CC00FF990000FF990000CC660000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00999999009999990000000000C0C0C000CC996600CC99
      9900CCCC9900FFFFFF00996666000099CC000099CC000099CC00000000000000
      00000000000000000000000000000000000000000000C0C0C000999999009999
      9900C0C0C000FFFFFF0099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000FF990000FF990000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066666600CCCCCC00CCCCCC0099999900000000000000000000000000CCCC
      CC00CC9999009966660099666600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000FF990000FF9900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066666600CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000CC99660099330000CC660000CC660000CC660000CC66000099330000CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCC
      CC00000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000CC99660099330000CC660000CC660000CC660000CC66000099330000CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCC
      CC00000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000000000007B000000000000000000
      00000000000000000000000000007B000000000000007B000000000000000000
      0000000000007B0000000000000000000000000000007B000000000000000000
      00000000000000000000000000007B000000000000007B000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      000000000000000000007B000000000000007B00000000000000000000000000
      000000000000000000007B0000000000000000000000000000007B0000000000
      000000000000000000007B000000000000007B00000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000000000
      000000000000000000000000000000000000000000007B000000000000000000
      000000000000000000000000000000000000000000007B000000000000000000
      000000000000000000000000000000000000000000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      99009999990099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F7000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F7000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F700000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F700000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F700000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0000000000999999000000000000000000BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F7000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999999000000000000000000BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F7000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F7000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000999999009999
      99009999990099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F7000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC9966000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999000000
      00009999990000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F7000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999009999
      99000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F7000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999000000
      00000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F7000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900999999009999990000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990066CCCC000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000003399CC003399CC0099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC00006699000000000000000000000000009999990099999900E5E5E500CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900999999000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF00006699003399CC0000000000000000009999990099999900CCCCCC00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00999999009999990000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0066CCCC000066990000000000000000009999990099999900CCCCCC00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699003399CC000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990099999900000000000000000099330000CC660000CC66
      0000CC660000993300009933000099330000993300009933000099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999009999990099999900999999009999990099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000003399CC0066CCFF0066CCCC0066CC
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0066CCCC00006699000000000099999900CCCCCC00CCCCCC00CCCC
      CC00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E500CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000003399CC0099FFFF0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FF
      FF00CCFFFF00CCFFFF00006699000000000099999900E5E5E500CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E50099999900000000000000000099330000CC660000CC66
      0000993300009933000099330000993300009933000099330000993300009933
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC0099999900000000003399CC0099FFFF0099FFFF0066CC
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC0066CCFF000000000099999900E5E5E500E5E5E500CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      99009999990099999900CCCCCC00000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000066
      99000000000000000000000000000000000099999900E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF0099999900CCCCCC009999990000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399CC000000
      0000000000000000000000000000000000000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E50099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC00999999000000000000000000000000003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      0000000000009933000099330000993300000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000009999990099999900999999000000000099330000E5E5E5009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF00993300009933000099330000000000000000000099999900E5E5E5009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF00999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000000000000000
      0000000000009933000000000000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000009999990000000000999999000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F7C7F7C7E003E003F7C7F7C7C001C001
      F783F78380008000F701F70180008000F729F72900000000F66CF66C00000000
      F66CF66C00000000F7EFF7EF00000000F7EFF7EF00000000366F366F00000000
      366F366F0000000094EF94EF0000000080EF80EF80018001C1EFC1EF8001C001
      E3EFE3EFC003E003E3EFE3EFF00FF00FF7F7F7F7FFFFFFFFF7F7F7F73FFF3FFF
      F7F7F7F70FFF0FFFF7F7F7F783FF83FF0000000080FF80FFF7F7F7F7C03FC03F
      F7F7F7F7C00FC00FF7F7F7F7E007E007F7F7F7F7E003E003F7F7F7F7F001F001
      00000000F000F000F7F7F7F7F800F800F7F7F7F7F800F800F7F7F7F7FC00FC00
      F7F7F7F7FE00FE00F7F7F7F7FF00FF00FFFFFFFFFEFFFEFFFFFFFFFFFEFFFEFF
      FFFFFFFFFEFFFEFFE187E187FEFFFEFFE187E187FEFFFEFFE187E187FEFFFEFF
      E187E187FEFFFEFFE187E187FEFFFEFFE187E187FEFFFEFFE187E187FEFFFEFF
      E187E187FEFFFEFFE187E187FEFFFEFFE187E187FEFFFEFFFFFFFFFFFEFFFEFF
      FFFFFFFFFEFFFEFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F0FFF0FFFFFFFFFFE0FFE0FFF9FFF9FFC0FFC0FFF8FFF8FF83018301F87FF87F
      87018701F83FF83F8F818F81F81FF81F87818781F80FF80F82018201F81FF81F
      C001C001F83FF83FE039E039F87FF87FF07FF07FF8FFF8FFFFFFFFFFF9FFF9FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801F801FFFFFFFFF000F000FFFFFFFFF
      000F000FFFFFFFFF000F000FFFFFFFFF000F000FE007E007000F000FC003C003
      000F000FC003C003000F000FC003C00300000000C003C00300000000C003C003
      00010001C003C00300030003C003C00300070007E007E007000F000FFFFFFFFF
      800F800FFFFFFFFFC01FC01FFFFFFFFFFBFFFBFFFFFFFFFFF9FFF9FFFFFFFFFF
      FCFFFCFF80078007FC7FFC7F00030003F03FF03F00030003F01FF01F00030003
      F80FF80F00030003F83FF83F00010003C01FC01F00000000C00FC00F00000001
      E00FE00F00000000E03FE03F80008001F01FF01FC3C0C3D1F00FF00FFFF3FFFF
      F807F807FFFFFFFFF803F803FFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFFFFFFF
      FF9FFF9FF3FFF3FF83018301E1FFE1FF0F900F90C0FFC0FF3FDC3FDC807F807F
      3C9C3C9C803F803F7C1E7C1E8C1F8C1F7E3E7E3E9E0F9E0F3C1C3C1CFF07FF07
      3C9C3C9CFF83FF830BF00BF0FFC3FFC380018001FFE3FFE3FFFFFFFFFFF3FFF3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF
      F9FFF9FFFF9FFF9FF8FFF8FF83018301F87FF87F0F900F90E03FE03F3FDC3FDC
      E01FE01F3FFC3FFCE00FE00F7FFE7FFEE007E0077FFE7FFEE00FE00F3FFC3FFC
      E01FE01F3FFC3FFCE03FE03F0FF00FF0F87FF87F80018001F8FFF8FFFFFFFFFF
      F9FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE67FE67FFFFFFFFFE23FE23FE007E007E01FE01FC003C003800F800F
      C003C00380078007C003C00380038003C003C00380018001C003C00380038003
      C003C00380078007C003C003800F800FE007E007E01FE01FFFFFFFFFE23FE23F
      FFFFFFFFE67FE67FFFFFFFFFFFFFFFFFFDFFFDFFA7FFA7FFE0FFE8FF01FF01FF
      801FA05F007F007F001F803F003F003F001F001F001F001F000F000F500F500F
      000F000FF007F007000F000FF803F80300010001FC01FC0101010001FE00FE00
      01010001FF00FF00000F000FFF80FF80008F000FFFC0FFC000AF002FFFE0FFE0
      803F803FFFF0FFF0E1FFE1FFFFF8FFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC3FFC3FE007E007F00FF00FE007E007F00FF00FE007E007
      E007E007E007E007E007E007E007E007E007E007E007E007E007E007E007E007
      F00FF00FE007E007F00FF00FE007E007FC3FFC3FE007E007FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFFFFFFFEFBFEFB
      FFFFFFFFFF77FF77FFFFFFFFFFAFFFAFFFFFFFFFFFDFFFDFFFFFFFFFFFAFFFAF
      FFFFFFFFFF77FF7700000000BEBBBEBBFFFFFFFFDD7DDD7DFFFFFFFFEEFFEEFF
      FFFFFFFFF5FFF5FFFFFFFFFFFBFFFBFFFFFFFFFFF5FFF5FFFFFFFFFFEEFFEEFF
      FFFFFFFFDF7FDF7FFFFFFFFFBFBFBFBFFFFFFFFFFFFFFFFFC003C00380018001
      C003DFFB80018001C003D00B80018001C003DFFB80018001C003D00B80018001
      C003DFFBFFFFFFFFC003D00B00000000C003DFFB00000000C003D00BFFFFFFFF
      C003DFFB80018001C003D04380018001C007DFD780018001C00FDFCF80018001
      C01FC01F80018001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001C001
      8007800780018001000700078001800100030003800180010003000380018001
      0001000180018001000100018001800100010001800180010001000180018001
      000F000F80018001801F801F80018001C3F8C3F880018001FFFCFFFC80018001
      FFBAFFBA80018001FFC7FFC7FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ChartEditor1: TChartEditor
    Chart = CurrChart
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 288
    Top = 392
  end
  object ChartEditor2: TChartEditor
    Chart = Chart1
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 224
    Top = 200
  end
  object RzPropertyStore1: TRzPropertyStore
    Properties = <
      item
        Component = RzNumericEdit5
        PropertyName = 'Value'
      end
      item
        Component = RzNumericEdit6
        PropertyName = 'Value'
      end
      item
        Component = RzSpinEdit4
        PropertyName = 'Value'
      end
      item
        Component = RadioButton4
        PropertyName = 'Checked'
      end
      item
        Component = RzSpinEdit1
        PropertyName = 'Value'
      end
      item
        Component = RzSpinEdit3
        PropertyName = 'Value'
      end
      item
        Component = RadioButton3
        PropertyName = 'Checked'
      end
      item
        Component = RzCheckBox1
        PropertyName = 'Checked'
      end
      item
        Component = RzSpinEdit5
        PropertyName = 'Value'
      end
      item
        Component = RzCheckBox2
        PropertyName = 'Checked'
      end
      item
        Component = RzSpinEdit6
        PropertyName = 'Value'
      end
      item
        Component = RzSpinEdit7
        PropertyName = 'Value'
      end
      item
        Component = RzSpinEdit8
        PropertyName = 'Value'
      end
      item
        Component = RzSpinEdit9
        PropertyName = 'Value'
      end
      item
        Component = RzColorEdit1
        PropertyName = 'SelectedColor'
      end
      item
        Component = RzCheckBox3
        PropertyName = 'Checked'
      end>
    RegIniFile = RzRegIniFile1
    Left = 408
    Top = 200
  end
  object RzCustomColors1: TRzCustomColors
    Colors.Strings = (
      'ColorA=FFFFFF'
      'ColorB=FFFFFF'
      'ColorC=FFFFFF'
      'ColorD=FFFFFF'
      'ColorE=FFFFFF'
      'ColorF=FFFFFF'
      'ColorG=FFFFFF'
      'ColorH=FFFFFF'
      'ColorI=FFFFFF'
      'ColorJ=FFFFFF'
      'ColorK=FFFFFF'
      'ColorL=FFFFFF'
      'ColorM=FFFFFF'
      'ColorN=FFFFFF'
      'ColorO=FFFFFF'
      'ColorP=FFFFFF')
    RegIniFile = RzRegIniFile1
    Left = 352
    Top = 248
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    Style = bsTerminal
    BorderColor = clGray
    BorderColorHot = clGray
    ButtonAppearance.Color = clBtnFace
    ButtonAppearance.ColorTo = clBtnFace
    ButtonAppearance.ColorChecked = clWhite
    ButtonAppearance.ColorCheckedTo = clWhite
    ButtonAppearance.ColorDown = clHighlight
    ButtonAppearance.ColorDownTo = clHighlight
    ButtonAppearance.ColorHot = clSilver
    ButtonAppearance.ColorHotTo = clSilver
    ButtonAppearance.BorderDownColor = clGray
    ButtonAppearance.BorderHotColor = clGray
    ButtonAppearance.BorderCheckedColor = clGray
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = clSilver
    CaptionAppearance.CaptionColorTo = clSilver
    CaptionAppearance.CaptionTextColor = clBlack
    CaptionAppearance.CaptionBorderColor = clHighlight
    CaptionAppearance.CaptionColorHot = clHighlight
    CaptionAppearance.CaptionColorHotTo = clHighlight
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = clBtnFace
    Color.ColorTo = clBtnFace
    Color.Direction = gdVertical
    Color.Mirror.Color = clBtnFace
    Color.Mirror.ColorTo = clBtnFace
    Color.Mirror.ColorMirror = clBtnFace
    Color.Mirror.ColorMirrorTo = clBtnFace
    ColorHot.Color = clBtnFace
    ColorHot.ColorTo = clBtnFace
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = clBtnFace
    ColorHot.Mirror.ColorTo = clBtnFace
    ColorHot.Mirror.ColorMirror = clBtnFace
    ColorHot.Mirror.ColorMirrorTo = clBtnFace
    CompactGlowButtonAppearance.BorderColor = clGray
    CompactGlowButtonAppearance.BorderColorHot = clGray
    CompactGlowButtonAppearance.BorderColorDown = clHighlight
    CompactGlowButtonAppearance.BorderColorChecked = clGray
    CompactGlowButtonAppearance.Color = clBtnFace
    CompactGlowButtonAppearance.ColorTo = clBtnFace
    CompactGlowButtonAppearance.ColorChecked = clGray
    CompactGlowButtonAppearance.ColorCheckedTo = clGray
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = clHighlight
    CompactGlowButtonAppearance.ColorDownTo = clHighlight
    CompactGlowButtonAppearance.ColorHot = clSilver
    CompactGlowButtonAppearance.ColorHotTo = clSilver
    CompactGlowButtonAppearance.ColorMirror = clBtnFace
    CompactGlowButtonAppearance.ColorMirrorTo = clBtnFace
    CompactGlowButtonAppearance.ColorMirrorHot = clSilver
    CompactGlowButtonAppearance.ColorMirrorHotTo = clSilver
    CompactGlowButtonAppearance.ColorMirrorDown = clHighlight
    CompactGlowButtonAppearance.ColorMirrorDownTo = clHighlight
    CompactGlowButtonAppearance.ColorMirrorChecked = clGray
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = clGray
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = clBtnFace
    DockColor.ColorTo = clBtnFace
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    FloatingWindowBorderColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = clGray
    GlowButtonAppearance.BorderColorHot = clGray
    GlowButtonAppearance.BorderColorDown = clHighlight
    GlowButtonAppearance.BorderColorChecked = clGray
    GlowButtonAppearance.Color = clBtnFace
    GlowButtonAppearance.ColorTo = clBtnFace
    GlowButtonAppearance.ColorChecked = clGray
    GlowButtonAppearance.ColorCheckedTo = clGray
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = clHighlight
    GlowButtonAppearance.ColorDownTo = clHighlight
    GlowButtonAppearance.ColorHot = clSilver
    GlowButtonAppearance.ColorHotTo = clSilver
    GlowButtonAppearance.ColorMirror = clBtnFace
    GlowButtonAppearance.ColorMirrorTo = clBtnFace
    GlowButtonAppearance.ColorMirrorHot = clSilver
    GlowButtonAppearance.ColorMirrorHotTo = clSilver
    GlowButtonAppearance.ColorMirrorDown = clHighlight
    GlowButtonAppearance.ColorMirrorDownTo = clHighlight
    GlowButtonAppearance.ColorMirrorChecked = clGray
    GlowButtonAppearance.ColorMirrorCheckedTo = clGray
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.BorderColor = clGray
    GroupAppearance.Color = clSilver
    GroupAppearance.ColorTo = clSilver
    GroupAppearance.ColorMirror = clSilver
    GroupAppearance.ColorMirrorTo = clSilver
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clBlack
    GroupAppearance.CaptionAppearance.CaptionColor = clSilver
    GroupAppearance.CaptionAppearance.CaptionColorTo = clSilver
    GroupAppearance.CaptionAppearance.CaptionTextColor = clBlack
    GroupAppearance.CaptionAppearance.CaptionBorderColor = 15921133
    GroupAppearance.CaptionAppearance.CaptionColorHot = clHighlight
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = clHighlight
    GroupAppearance.PageAppearance.BorderColor = clGray
    GroupAppearance.PageAppearance.Color = clSilver
    GroupAppearance.PageAppearance.ColorTo = clSilver
    GroupAppearance.PageAppearance.ColorMirror = clSilver
    GroupAppearance.PageAppearance.ColorMirrorTo = clSilver
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = clGray
    GroupAppearance.PageAppearance.HighLightColor = clSilver
    GroupAppearance.TabAppearance.BorderColor = clGray
    GroupAppearance.TabAppearance.BorderColorHot = clGray
    GroupAppearance.TabAppearance.BorderColorSelected = clGray
    GroupAppearance.TabAppearance.BorderColorSelectedHot = clGray
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = clHighlight
    GroupAppearance.TabAppearance.ColorSelectedTo = clHighlight
    GroupAppearance.TabAppearance.ColorDisabled = 15921906
    GroupAppearance.TabAppearance.ColorDisabledTo = 15921906
    GroupAppearance.TabAppearance.ColorHot = clSilver
    GroupAppearance.TabAppearance.ColorHotTo = clSilver
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = clSilver
    GroupAppearance.TabAppearance.ColorMirrorHotTo = clSilver
    GroupAppearance.TabAppearance.ColorMirrorSelected = clHighlight
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = clHighlight
    GroupAppearance.TabAppearance.ColorMirrorDisabled = 15921906
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = 15921906
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clBlack
    GroupAppearance.TabAppearance.TextColorHot = clBlack
    GroupAppearance.TabAppearance.TextColorSelected = clWhite
    GroupAppearance.TabAppearance.TextColorDisabled = clGray
    GroupAppearance.TabAppearance.ShadowColor = 12565174
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16777214
    GroupAppearance.TabAppearance.HighLightColorSelected = 13815240
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 15590880
    GroupAppearance.TabAppearance.HighLightColorDown = 16119026
    GroupAppearance.ToolBarAppearance.BorderColor = clGray
    GroupAppearance.ToolBarAppearance.BorderColorHot = clGray
    GroupAppearance.ToolBarAppearance.Color.Color = clBtnFace
    GroupAppearance.ToolBarAppearance.Color.ColorTo = clBtnFace
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = clBtnFace
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = clBtnFace
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = clGray
    PageAppearance.Color = clBtnFace
    PageAppearance.ColorTo = clBtnFace
    PageAppearance.ColorMirror = clBtnFace
    PageAppearance.ColorMirrorTo = clBtnFace
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = clGray
    PageAppearance.HighLightColor = clSilver
    PagerCaption.BorderColor = clGray
    PagerCaption.Color = clBtnFace
    PagerCaption.ColorTo = clBtnFace
    PagerCaption.ColorMirror = clBtnFace
    PagerCaption.ColorMirrorTo = clBtnFace
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clGray
    PagerCaption.TextColorExtended = clBlue
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -13
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = clGray
    QATAppearance.Color = clBtnFace
    QATAppearance.ColorTo = clBtnFace
    QATAppearance.FullSizeBorderColor = clBtnFace
    QATAppearance.FullSizeColor = clBtnFace
    QATAppearance.FullSizeColorTo = clBtnFace
    RightHandleColorHot = clSilver
    RightHandleColorHotTo = clSilver
    RightHandleColorDown = clHighlight
    RightHandleColorDownTo = clHighlight
    TabAppearance.BorderColor = clGray
    TabAppearance.BorderColorHot = clGray
    TabAppearance.BorderColorSelected = clHighlight
    TabAppearance.BorderColorSelectedHot = clGray
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = clHighlight
    TabAppearance.ColorSelectedTo = clHighlight
    TabAppearance.ColorDisabled = clGray
    TabAppearance.ColorDisabledTo = clGray
    TabAppearance.ColorHot = clSilver
    TabAppearance.ColorHotTo = clSilver
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = clSilver
    TabAppearance.ColorMirrorHotTo = clSilver
    TabAppearance.ColorMirrorSelected = clHighlight
    TabAppearance.ColorMirrorSelectedTo = clHighlight
    TabAppearance.ColorMirrorDisabled = clGray
    TabAppearance.ColorMirrorDisabledTo = clGray
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorHot = clBlack
    TabAppearance.TextColorSelected = clWhite
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = clGray
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = clGray
    TabAppearance.HighLightColorSelected = clBtnFace
    TabAppearance.HighLightColorSelectedHot = clHighlight
    TabAppearance.HighLightColorDown = clHighlight
    TabAppearance.BackGround.Color = clBtnFace
    TabAppearance.BackGround.ColorTo = clBtnFace
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 352
    Top = 296
  end
  object ImageList2: TImageList
    Left = 352
    Top = 344
    Bitmap = {
      494C010114001800400110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC009999990099999900999999009999990099999900CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000000000009999
      9900B2B2B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2B2009999
      99000000000000000000000000000000000000000000000000000000000000CC
      0000009900000099000000660000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200999999009999990080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000008000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000000CC00000099
      0000009900000099000000990000006600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2009999
      9900999999009999990099999900808080000000000000000000000000000000
      00000000000000000000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000CC0000009900000099
      0000009900000099000000990000009900000066000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      9900999999009999990099999900999999008080800000000000000000000000
      0000000000000000000000000000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC0000000000CCCCCC00B2B2B200CCCCCC00CCCC
      CC00FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00CCCC
      CC00CCCCCC00B2B2B200CCCCCC00000000000000000000CC0000009900000099
      00000066000000CC000000990000009900000099000000660000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      990080808000B2B2B20099999900999999009999990080808000000000000000
      000000000000000000000000000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00000080000000000099999900CCCCCC00CCCCCC00CCCC
      CC00FFFFFF00FFFFFF00FFFFFF00CCCCCC00FFFFFF00FFFFFF00FFFFFF00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000CC0000009900000066
      0000000000000000000000CC0000009900000099000000990000006600000000
      00000000000000000000000000000000000000000000B2B2B200999999008080
      80000000000000000000B2B2B200999999009999990099999900808080000000
      000000000000000000000000000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00000080000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000CC0000006600000000
      000000000000000000000000000000CC00000099000000990000009900000066
      00000000000000000000000000000000000000000000B2B2B200808080000000
      0000000000000000000000000000B2B2B2009999990099999900999999008080
      800000000000000000000000000000000000000080000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF00000080000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000000CC000000990000009900000099
      0000006600000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B2B20099999900999999009999
      990080808000000000000000000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00000080000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CC0000009900000099
      0000009900000066000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      990099999900808080000000000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00000080000000000099999900CCCCCC00CCCCCC00CCCC
      CC00FFFFFF00FFFFFF00FFFFFF00CCCCCC00FFFFFF00FFFFFF00FFFFFF00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CC00000099
      0000009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2009999
      9900999999008080800000000000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC0000000000CCCCCC00B2B2B200CCCCCC00CCCC
      CC00FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00CCCC
      CC00CCCCCC00B2B2B200CCCCCC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      0000009900000066000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2009999990080808000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2008080800000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000008000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000000000009999
      9900B2B2B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2B2009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC009999990099999900999999009999990099999900CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC0000000000000000000000000000000000000000007B000000000000000000
      00000000000000000000000000007B000000000000007B000000000000000000
      0000000000007B0000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      000000000000000000007B000000000000007B00000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC00000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC996600000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC9966000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC00000000000000000000000000000000007B000000000000000000
      000000000000000000000000000000000000000000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC996600000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC996600000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000993300009933000099330000993300009933000099330000CC66
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F7000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000993300009933000099330000993300009933000099330000993300009933
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F7000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF0099330000CC66000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC996600000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000E5E5E5009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF00993300009933000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC99660000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      66000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      00000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003333330033333300999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC0066666600333333003333
      3300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2EFF100E5E5E500B2B2
      B200CC9999009966660099666600B2B2B200CCCCCC00E5E5E500E2EFF1000000
      000000000000000000000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990066CCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000066666600666666006666
      6600333333009999990000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E500CC99990099666600CC99
      9900CC999900FFFFFF00996666009999990099999900B2B2B200E5E5E5000000
      0000000000000000000000000000000000003399CC003399CC0099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC00006699000000000000000000000000000000000000000000000000000000
      0000CC99660099330000CC660000CC660000CC660000CC66000099330000CC99
      66000000000000000000000000000000000000000000CCCCCC00666666006666
      6600666666003333330000999900000000000000000000000000000000000000
      00000000000000000000000000000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600336699003366990033669900E2EFF1000000
      0000000000000000000000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF00006699003399CC0000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000666666006666
      660099FFFF0099CCCC0099CCCC00009999000000000000000000000000000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCCC000099CC00FFFFFF00FFCC
      CC00000000000000000000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0066CCCC000066990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000CCCCCC008080
      8000CCFFFF0099FFFF0099CCCC0099CCCC000099990099CCCC00000000000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCFF003399CC00FFCCCC00CC66
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699003399CC00000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      00009933000000000000000000000000000000000000000000000000000066CC
      CC00FFFFFF00CCFFFF0099FFFF0099FFFF0099CCCC0066CCCC00009999000000
      00000000000000000000000000000000000099666600FFCC9900CC999900CC99
      6600FFCCCC00FFFFFF009966660099CCCC0099CCFF00B2B2B200FF660000CC66
      0000000000000000000000000000000000003399CC0066CCFF0066CCCC0066CC
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0066CCCC0000669900000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      00009933000000000000000000000000000000000000000000000000000066CC
      CC00FFFFFF00CCFFFF00CCFFFF0099FFFF0099FFFF0099CCCC0099CCCC000099
      990066CCCC0000000000000000000000000099666600FFCC990099666600FFFF
      FF00FFCCCC00FFFFFF009966660099CCCC00C0C0C000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000003399CC0099FFFF0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FF
      FF00CCFFFF00CCFFFF0000669900000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      000099CCCC00FFFFFF00CCFFFF00CCFFFF0099FFFF0099FFFF0099CCCC00FFCC
      CC009933000099330000000000000000000099666600FFCC9900CC9999009966
      6600FFCCCC00FFFFFF009966660000000000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000003399CC0099FFFF0099FFFF0066CC
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC0066CCFF00000000000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC00FFFFFF00CCFFFF00CCFFFF00FFCCCC00CC660000CC6600009933
      00009933000099330000993300000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660000000000CC999900CC660000CC660000CC66
      0000CC660000CC660000CC660000000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000066
      9900000000000000000000000000000000000000000000000000000000000000
      0000CC99660099330000CC660000CC660000CC660000CC66000099330000CC99
      6600000000000000000000000000000000000000000000000000000000000000
      00000000000099CCCC00FFFFFF00CCFFFF00CC660000CC660000CC660000CC66
      00009933000099330000993300009933000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00E2EFF100CC999900FF660000CC66
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC00FFFFFF00FFCCCC00CC660000CC660000CC660000CC66
      0000CC66000099330000993300009933000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660099CCCC000000000099CCCC00FFCC9900CC66
      00000000000000000000000000000000000000000000000000003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      0000000000009933000099330000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF990000FF990000CC660000CC660000CC660000CC66
      0000CC660000CC660000993300009933000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00000000003399CC0000000000FFCC
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CC660000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC6600009933000000000000C0C0C000CC996600CC99
      9900CCCC9900FFFFFF00996666000099CC000099CC000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000000000000000
      0000000000009933000000000000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC660000FF990000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC660000000000000000000000000000CCCC
      CC00CC9999009966660099666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300000000000000000000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000993300000000000099330000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC6600009933000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000993300009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC66000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC66000099330000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC66000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC66000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099330000993300009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC6600009933000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000993300000000000099330000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300000000000000000000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF01FF01F
      F3FFF3FFE00FE00FE1FFE1FFC007C007C0FFC0FF80038003807F807F00010001
      803F803F000100018C1F8C1F000100019E0F9E0F00010001FF07FF0700010001
      FF83FF8300010001FFC3FFC300010001FFE3FFE380038003FFF3FFF3C007C007
      FFFFFFFFE00FE00FFFFFFFFFF01FF01FFDFDFFFFFFFFFBFFFEFBFFFFC003F9FF
      FF77FFFFC003FCFFFFAFFFFFC003FC7FFFDFFFFFC003F03FFFAFFFFFC003F01F
      FF77FFFFC003F80FBEBB0000C003F83FDD7DFFFFC003C01FEEFFFFFFC003C00F
      F5FFFFFFC003E00FFBFFFFFFC003E03FF5FFFFFFC007F01FEEFFFFFFC00FF00F
      DF7FFFFFC01FF807BFBFFFFFFFFFF803FFFFFFFFFFFFFEFFC001C0038001FEFF
      8001C0038001FEFF8001C0038001FEFF8001C0038001FEFF8001C0038001FEFF
      8001C003FFFFFEFF8001C0030000FEFF8001C0030000FEFF8001C003FFFFFEFF
      8001C0038001FEFF8001C0038001FEFF8001C0078001FEFF8001C00F8001FEFF
      8001C01F8001FEFFFFFFFFFFFFFFFEFFFFFFFFFFFDFFFFFFFFFF1FFFE0FFFFFF
      FFFF0FFF801F8007FC3F83FF001F0007F00F81FF001F0003F00FC0FF000F0003
      E007C03F000F0001E007E01F000F0001E007E00700010001E007F00301010001
      F00FF0010101000FF00FF800000F801FFC3FF800008FC3F8FFFFFC0000AFFFFC
      FFFFFC00803FFFBAFFFFFE00E1FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E67FFFFFFFFFFFFFE23FF9FFE187E007E01FF8FFE187E007800FF87FE187E007
      8007F83FE187E0078003F81FE187E0078001F80FE187E0078003F81FE187E007
      8007F83FE187E007800FF87FE187E007E01FF8FFE187E007E23FF9FFFFFFFFFF
      E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList3: TImageList
    Left = 352
    Top = 392
    Bitmap = {
      494C010114001800440110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      0000009900000099000000660000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200999999009999990080808000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000099000000
      99000000990000000000000000000000000000000000000000000000FF000000
      99000000990000009900000000000000000000000000B2B2B200808080008080
      8000808080000000000000000000000000000000000000000000B2B2B2008080
      800080808000808080000000000000000000000000000000000000CC00000099
      0000009900000099000000990000006600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2009999
      9900999999009999990099999900808080000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000000000000000FF000000CC000000
      CC000000CC0000009900000000000000000000000000B2B2B200999999009999
      99009999990080808000000000000000000000000000B2B2B200999999009999
      9900999999008080800000000000000000000000000000CC0000009900000099
      0000009900000099000000990000009900000066000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      9900999999009999990099999900999999008080800000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      CC000000CC000000CC0000009900000000000000FF000000CC000000CC000000
      CC00000099000000000000000000000000000000000000000000B2B2B2009999
      990099999900999999008080800000000000B2B2B20099999900999999009999
      9900808080000000000000000000000000000000000000CC0000009900000099
      00000066000000CC000000990000009900000099000000660000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      990080808000B2B2B20099999900999999009999990080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000CC000000CC000000CC00000099000000CC000000CC000000CC000000
      990000000000000000000000000000000000000000000000000000000000B2B2
      B200999999009999990099999900808080009999990099999900999999008080
      8000000000000000000000000000000000000000000000CC0000009900000066
      0000000000000000000000CC0000009900000099000000990000006600000000
      00000000000000000000000000000000000000000000B2B2B200999999008080
      80000000000000000000B2B2B200999999009999990099999900808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900999999009999990099999900808080000000
      0000000000000000000000000000000000000000000000CC0000006600000000
      000000000000000000000000000000CC00000099000000990000009900000066
      00000000000000000000000000000000000000000000B2B2B200808080000000
      0000000000000000000000000000B2B2B2009999990099999900999999008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000CC000000CC000000CC0000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B20099999900999999009999990080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CC000000990000009900000099
      0000006600000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B2B20099999900999999009999
      9900808080000000000000000000000000000000000000000000000000000000
      00000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900999999009999990099999900808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CC0000009900000099
      0000009900000066000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200999999009999
      9900999999008080800000000000000000000000000000000000000000000000
      FF000000CC000000CC000000CC00000099000000CC000000CC000000CC000000
      990000000000000000000000000000000000000000000000000000000000B2B2
      B200999999009999990099999900808080009999990099999900999999008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CC00000099
      0000009900000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2009999
      99009999990080808000000000000000000000000000000000000000FF000000
      CC000000CC000000CC0000009900000000000000FF000000CC000000CC000000
      CC00000099000000000000000000000000000000000000000000B2B2B2009999
      990099999900999999008080800000000000B2B2B20099999900999999009999
      9900808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CC
      0000009900000066000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B20099999900808080000000000000000000000000000000FF000000CC000000
      CC000000CC00000099000000000000000000000000000000FF000000CC000000
      CC000000CC0000009900000000000000000000000000B2B2B200999999009999
      99009999990080808000000000000000000000000000B2B2B200999999009999
      9900999999008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CC00000066000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200808080000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF00000000000000000000000000B2B2B200B2B2B200B2B2
      B200B2B2B2000000000000000000000000000000000000000000B2B2B200B2B2
      B200B2B2B200B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000000000000000000000000
      0000000000000000000099999900E5E5E5009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      000099999900999999009999990099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000000000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000000000000000000000000
      000099999900E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC009999990099999900999999009999
      990000000000000000000000000000000000000000007B000000000000000000
      00000000000000000000000000007B000000000000007B000000000000000000
      0000000000007B0000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500CCCCCC00CCCCCC0099999900000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      000000000000000000007B000000000000007B00000000000000000000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000999999009999
      9900999999009999990099999900E5E5E500CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0000000000999999000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500CCCCCC00CCCCCC009999990099999900999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000999999009999
      9900999999009999990000000000000000000000000000000000000000009999
      9900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000999999000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000000000000000000000000
      000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000000000007B0000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000007B000000000000000000
      000000000000000000000000000000000000000000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      99009999990099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F70000000000BDE7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999009999990099999900999999009999990099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0000000000999999000000000000000000BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F7000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000999999000000000000000000BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F7000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00000000009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000999999000000
      0000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000999999009999
      99009999990099999900000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900E5E5E5009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF00999999009999990099999900000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999000000
      00009999990000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000999999000000
      0000000000000000000000000000000000000000000000000000999999009999
      99000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700BDE7F70000000000BDE7F700000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999000000
      00000000000000000000000000000000000000000000BDE7F700BDE7F700BDE7
      F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7F700BDE7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE718000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660066666600999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F10000000000CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990080808000666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2EFF10000000000B2B2
      B200999999009999990099999900B2B2B200CCCCCC0000000000E2EFF1000000
      0000000000000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000666666009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999009999
      990099999900FFFFFF00999999009999990099999900B2B2B200000000000000
      0000000000000000000000000000000000009999990099999900E5E5E500CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCC
      CC00000000000000000000000000000000000000000099999900808080008080
      8000808080006666660099999900000000000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900999999009999990099999900E2EFF1000000
      0000000000000000000000000000000000009999990099999900CCCCCC00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00999999009999990000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000808080008080
      8000E5E5E500CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900C0C0C000C0C0C00099999900FFFFFF00CCCC
      CC00000000000000000000000000000000009999990099999900CCCCCC00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000999999008080
      8000E5E5E500E5E5E500CCCCCC00CCCCCC0099999900CCCCCC00000000000000
      00000000000000000000000000000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900C0C0C000CCCCCC0099999900CCCCCC009999
      99000000000000000000000000000000000099999900CCCCCC0099999900E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E5009999990099999900000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000000000000CCCC
      CC00FFFFFF00E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00999999000000
      00000000000000000000000000000000000099999900C0C0C000999999009999
      9900CCCCCC00FFFFFF0099999900CCCCCC00CCCCCC00B2B2B200999999009999
      99000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CCCC
      CC00E5E5E500CCCCCC0099999900000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000000000000CCCC
      CC00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC009999
      9900CCCCCC0000000000000000000000000099999900C0C0C00066666600FFFF
      FF00CCCCCC00FFFFFF0099999900CCCCCC00C0C0C00099999900999999009999
      99009999990099999900999999000000000099999900E5E5E500CCCCCC009999
      9900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E50099999900000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000CCCCCC00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00CCCC
      CC006666660066666600000000000000000099999900C0C0C000999999006666
      6600CCCCCC00FFFFFF0099999900E5E5E5009999990099999900999999009999
      99009999990099999900999999000000000099999900E5E5E500E5E5E500CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      99009999990099999900CCCCCC00000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC00FFFFFF00E5E5E500E5E5E500CCCCCC0080808000808080006666
      66006666660066666600666666000000000099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900E5E5E5009999990099999900999999009999
      99009999990099999900999999000000000099999900E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00FFFFFF00E5E5E5008080800080808000808080008080
      80006666660066666600666666006666660099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900CCCCCC00E2EFF10099999900999999009999
      9900000000000000000000000000000000000000000099999900E5E5E500E5E5
      E500E5E5E500E5E5E50099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00FFFFFF00CCCCCC008080800080808000808080008080
      80008080800066666600666666006666660099999900C0C0C000C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900CCCCCC00E5E5E500CCCCCC00C0C0C0009999
      9900000000000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000009999990099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999008080800080808000808080008080
      8000808080008080800066666600666666009999990099999900C0C0C000C0C0
      C000CCCCCC00FFFFFF0099999900CCCCCC00E5E5E5009999990000000000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066666600999999009999990080808000808080008080
      80008080800080808000808080006666660000000000C0C0C000999999009999
      9900C0C0C000FFFFFF0099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000009999990000000000999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666009999990099999900808080008080
      800080808000808080008080800080808000000000000000000000000000CCCC
      CC00999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00999999000000000099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC009999990099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000099999900999999009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000099999900999999009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC009999990099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000009999
      9900CCCCCC00999999000000000099999900CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3FFF3FFFFFFFFFFE1FFE1FF87C387C3C0FFC0FF83838383807F807FC107C107
      803F803FE00FE00F8C1F8C1FF01FF01F9E0F9E0FF83FF83FFF07FF07F01FF01F
      FF83FF83E00FE00FFFC3FFC3C107C107FFE3FFE383838383FFF3FFF387C387C3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFBFFFEFBFFFFC003F9FF
      FF77FFFFDFFBFCFFFFAFFFFFD00BFC7FFFDFFFFFDFFBF03FFFAFFFFFD00BF01F
      FF77FFFFDFFBF80FBEBB0000D00BF83FDD7DFFFFDFFBC01FEEFFFFFFD00BC00F
      F5FFFFFFDFFBE00FFBFFFFFFD043E03FF5FFFFFFDFD7F01FEEFFFFFFDFCFF00F
      DF7FFFFFC01FF807BFBFFFFFFFFFF803FFFFFFFFFFFFFEFFC001C0038001FEFF
      8001DFFB8001FEFF8001D00B8001FEFF8001DFFB8001FEFF8001D00B8001FEFF
      8001DFFBFFFFFEFF8001D00B0000FEFF8001DFFB0000FEFF8001D00BFFFFFEFF
      8001DFFB8001FEFF8001D0438001FEFF8001DFD78001FEFF8001DFCF8001FEFF
      8001C01F8001FEFFFFFFFFFFFFFFFEFFFFFFFFFFFDFFFFFFFFFF1FFFE8FFFFFF
      FFFF0FFFA05F8007FC3F83FF803F0007F00F81FF001F0003F00FC0FF000F0003
      E007C03F000F0001E007E01F000F0001E007E00700010001E007F00300010001
      F00FF0010001000FF00FF800000F801FFC3FF800000FC3F8FFFFFC00002FFFFC
      FFFFFC00803FFFBAFFFFFE00E1FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      E67FFFFFFFFFFFFFE23FF9FFE187E007E01FF8FFE187E007800FF87FE187E007
      8007F83FE187E0078003F81FE187E0078001F80FE187E0078003F81FE187E007
      8007F83FE187E007800FF87FE187E007E01FF8FFE187E007E23FF9FFFFFFFFFF
      E67FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object TimerClock: TTimer
    Enabled = False
    Interval = 250
    OnTimer = TimerClockTimer
    Left = 408
    Top = 248
  end
  object FolderDialog1: TRzSelectFolderDialog
    Title = #1042#1099#1073#1086#1088' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1080' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1101#1082#1089#1087#1077#1088#1080#1084#1077#1085#1090#1072
    Left = 408
    Top = 296
  end
  object ChartEditor3: TChartEditor
    Chart = ChartI
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 408
    Top = 344
  end
  object ChartEditor4: TChartEditor
    Chart = ChartU
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 408
    Top = 392
  end
  object ChartEditor5: TChartEditor
    Chart = VoltageChart
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 456
    Top = 344
  end
  object ChartEditor6: TChartEditor
    Chart = CurrentChart
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 456
    Top = 392
  end
  object ChartEditor7: TChartEditor
    Chart = RChart
    GalleryHeight = 0
    GalleryWidth = 0
    Height = 0
    Width = 0
    Left = 504
    Top = 344
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Images = ImageList2
    OnPopup = AdvPopupMenu1Popup
    DisabledImages = ImageList3
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.3.1'
    Left = 224
    Top = 440
    object N16: TMenuItem
      AutoCheck = True
      Caption = #1051#1086#1075#1072#1088#1080#1092#1084#1080#1095#1077#1089#1082#1072#1103' '#1096#1082#1072#1083#1072
      OnClick = N16Click
    end
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osWindows7
    Background.Position = bpCenter
    Background.Color = 15658734
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658734
    IconBar.ColorTo = clNone
    IconBar.CheckColor = 16052198
    IconBar.CheckBorder = 15127501
    IconBar.RadioColor = 16052198
    IconBar.RadioBorder = 15127501
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 16575452
    SelectedItem.ColorTo = 16571329
    SelectedItem.BorderColor = 13542013
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -9
    SelectedItem.NotesFont.Name = 'Segoe UI'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckColor = 16575452
    SelectedItem.CheckBorder = 15127501
    SelectedItem.RadioColor = 16575452
    SelectedItem.RadioBorder = 13542013
    RootItem.Color = clWhite
    RootItem.ColorTo = 15653844
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 16575452
    RootItem.SelectedColorTo = 16571329
    RootItem.SelectedColorMirror = 16571329
    RootItem.SelectedColorMirrorTo = 16575452
    RootItem.SelectedBorderColor = 13542013
    RootItem.HoverColor = clWhite
    RootItem.HoverColorTo = 15194579
    RootItem.HoverColorMirror = 15194579
    RootItem.HoverColorMirrorTo = 16380399
    RootItem.HoverBorderColor = 10984085
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 14737632
    Separator.ColorTo = clWhite
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -9
    NotesFont.Name = 'Segoe UI'
    NotesFont.Style = []
    MenuBorderColor = 9934743
    Left = 352
    Top = 440
  end
  object AdvPopupMenu2: TAdvPopupMenu
    Version = '2.5.3.1'
    Left = 224
    Top = 488
  end
  object AdvPopupMenu3: TAdvPopupMenu
    Images = ImageList2
    OnPopup = AdvPopupMenu1Popup
    DisabledImages = ImageList3
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.3.1'
    Left = 288
    Top = 440
    object MenuItem1: TMenuItem
      AutoCheck = True
      Caption = #1048#1085#1074#1077#1088#1090#1080#1088#1086#1074#1072#1090#1100
      OnClick = MenuItem1Click
    end
  end
  object JvScreenSaveSuppressor1: TJvScreenSaveSuppressor
    Left = 224
    Top = 296
  end
end
