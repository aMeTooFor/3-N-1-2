unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Math, SQLDB, SQLDBLib, Mouse, keyboard,
  SQLite3Conn, DB, Dialogs, StdCtrls, ComCtrls, ExtCtrls, DBGrids, TAGraph,
  TASeries, TADbSource, TADrawUtils, TACustomSeries, Types,
  TALegend, TAChartUtils, TAChartAxisUtils, TATextElements, TATypes, TACustomSource;

  //{$I lcl_defines.inc}
  //{$I winapih.inc}
type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    DataSource1: TDataSource;
    DbChartSource1: TDbChartSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ScrollBar1: TScrollBar;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    seaknum: TEdit;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ListView1: TListView;
    ListView2: TListView;
    Memo1: TMemo;
    PageControl1: TPageControl;
    SQLConnector1: TSQLConnector;
    SQLDBLibraryLoader1: TSQLDBLibraryLoader;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery1lineid: TLongintField;
    SQLQuery1lineName: TMemoField;
    SQLQuery1lineTEXT: TMemoField;
    SQLQuery1parentid: TLongintField;
    SQLQuery1X: TLongintField;
    SQLQuery1Y: TLongintField;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TreeView1: TTreeView;
    TreeView2: TTreeView;
    //function BuiltinCompare(AItem1, AItem2: Pointer): Integer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Chart1AfterDraw(ASender: TChart; ADrawer: IChartDrawer);
    procedure Chart1AxisList0GetMarkText(Sender: TObject; var AText: string;
      AMark: double);
    procedure Chart1AxisList0MarkToText(var AText: string; AMark: double);
    procedure Chart1BeforeCustomDrawBackWall(ASender: TChart;
      ADrawer: IChartDrawer; const ARect: TRect; var ADoDefaultDrawing: boolean);
    procedure Chart1Click(Sender: TObject);
    procedure Chart1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: boolean);
    procedure Chart1ExtentChanged(ASender: TChart);
    procedure Chart1ExtentChanging(ASender: TChart);
    procedure Chart1LineSeries1ChartMarksGetShape(ASender: TChartTextElement;
      const ABoundingBox: TRect; var APolygon: TPointArray);
    procedure Chart1LineSeries1ChartSeriesLegendDraw(ACanvas: TCanvas;
      const ARect: TRect; AIndex: integer; AItem: TLegendItem);
    procedure Chart1LineSeries1CustomDrawPointer(ASender: TChartSeries;
      ADrawer: IChartDrawer; AIndex: integer; ACenter: TPoint);
    procedure Chart1LineSeries1GetMark(out AFormattedMark: string; AIndex: integer);
    procedure Chart1LineSeries1GetPointerStyle(ASender: TChartSeries;
      AValueIndex: integer; var AStyle: TSeriesPointerStyle);
    procedure Chart1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure TreeView1AdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: boolean);
    procedure TreeView1Changing(Sender: TObject; Node: TTreeNode;
      var AllowChange: boolean);
    procedure TreeView1Click(Sender: TObject);
    procedure TreeView1CustomDraw(Sender: TCustomTreeView; const ARect: TRect;
      var DefaultDraw: boolean);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: boolean);
    procedure TreeView1DblClick(Sender: TObject);
    procedure TreeView1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: integer);
    procedure TreeView1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure TreeView1NodeChanged(Sender: TObject; Node: TTreeNode;
      ChangeReason: TTreeNodeChangeReason);
    procedure TreeView1SelectionChanged(Sender: TObject);
    procedure TreeView1ShowHint(Sender: TObject; HintInfo: PHintInfo);
  private

  public
    function heto2(w: string; F0space: integer): string;
    function is2power(i: integer): boolean;
    function is3power_1(i: integer): boolean;
    function is2power_1(i: integer): boolean;
  end;

  { TFFF }

  TFFF = class(TObject)
  public
    www: TLineSeries;
    procedure GetMark(out AFormattedMark: string; AIndex: integer);
  end;

  { TCustomTreeView111 }

  TCustomTreeView111 = class(TTreeView)
     //TCustomTreeView111 = class(TCustomTreeView)
  type
    //TBaseClass = class
    //public
    //  procedure BaseMethod; virtual; // 使用 virtual 关键字允许子类覆盖此方法
    //end;

    //TDerivedClass = class(TBaseClass) // TDerivedClass 继承自 TBaseClass
    //public
    //  procedure DerivedMethod; override; // 使用 override 关键字明确指出这个方法覆盖了基类中的方法
    //end;

  private

  protected
    //FMaxRight: integer;  override;
    //FLastVertScrollInfo: TScrollInfo;
    procedure UpdateScrollbars; //override;
    //procedure SetScrolledTop(AValue: integer);               //forward;//dynamic; //overload;
    //procedure SetScrolledLeft(AValue: integer);
    //procedure ScrollView(DeltaX, DeltaY: integer);//override;
    procedure Invalidate; override;
    procedure UpdateMaxRight;
    //function GetMaxScrollLeft: integer;
  public
    maxwidth:integer;
  end;

  //  procedure TCustomTreeView.ScrollView(DeltaX, DeltaY: Integer);
  //var
  //  ScrollArea: TRect;
  //  ScrollFlags: Integer;
  //begin
  //  //exit;
  //  if (DeltaX=0) and (DeltaY=0) then
  //    Exit;
  //  if (DeltaX=1111111111) then
  //  begin
  //     SetScrolledTop(DeltaY);
  //     exit;
  //  end;
  { TClassA }

  TClassA = class(TObject)

  private
    procedure Show(www: string);dynamic;//override;
    procedure Showww(www: string);//dynamic;//override;
  protected
  public
  end;

  { TClassB }

  TClassB = class(TClassA)
    procedure Show(www: string);override;
    procedure Showww(www: string);//override;
  private
  protected
    procedure show2(www: string);//override;
  public
  end;

var
  Form1: TForm1;
  power2_20: array[1..20] of integer;
  power3_20: array[1..20] of integer;
  Chart1LineSeries_CUR: TLineSeries;
  linesSeries: TFPList;//TPointerList;//TList;
  linesLables: TFPList;//TPointerList;//TList;

implementation

//uses
//  SysUtils, sqlite3;

//var db: sqlite3_ptr;
//var rc: Integer;

//begin
//  // 打开数据库
//  rc := sqlite3_open('example.db', db);
//  if rc <> SQLITE_OK then begin
//    Writeln('Cannot open database: ', sqlite3_errmsg(db));
//    Exit;
//  end;

//  // 执行SQL命令
//  rc := sqlite3_exec(db, 'CREATE TABLE IF NOT EXISTS persons (id INTEGER PRIMARY KEY, name TEXT)', nil, nil, nil);
//  if rc <> SQLITE_OK then begin
//    Writeln('SQL error: ', sqlite3_errmsg(db));
//  end;

//  // 关闭数据库
//  sqlite3_close(db);
//end.


//fpc/lazarus自带的SQLDB SQLite使用静态链接的方法
//一、安装SQLIte3static
//从网上找到的方法：
//https://stackoverflow.com/questions/37912845/static-link-sqlite-in-lazarus
//安装包下载：
//https://icculus.org/%7Ekfitzner/misc/sqlite3staticconnection_050.zip
//下载后安装sqlite3static.lpk
//我修改了sqlite3static.lpk libsqlite3.a文件的默认目录
{$R *.lfm}
{ TClassA }

procedure TClassA.Show(www: string);
begin
  ShowMessage(www);
end;

procedure TClassA.Showww(www: string);
begin
  ShowMessage(www);
end;

{ TClassB }

procedure TClassB.Show(www: string);
begin
  //inherited;
   ShowMessage(www+'classB');
end;

procedure TClassB.Showww(www: string);
begin
  //inherited Showww(www);
   ShowMessage(www+'classB');
end;

procedure TClassB.show2(www: string);
begin
  ShowMessage(www + 'ok');
end;
{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j, kk: integer;
  nn, m: TListItem;
begin
  //showmessage('角谷猜想');
  memo1.Lines.Clear;

  //memo1.Lines.Add('角谷猜想');
  i := StrToInt(edit1.Text);
  memo1.Lines.add(edit1.Text + '=' + i.ToHexString() + '=' + heto2(i.ToHexString(), 0));
  memo1.Lines.add(heto2(i.ToHexString(), 0));
  ListView1.Items.Clear;
  ListView2.Items.Clear;
  kk := 0;
  while True do
  begin
    if i = 1 then
      break;
    if (i mod 2) = 0 then
    begin
      i := i div 2;
      kk := kk + 1;
      memo1.Lines.add(heto2(i.ToHexString(), 0) + '     /2');
      nn := TListItem.Create(self.ListView1.Items);
      nn.Caption := heto2(i.ToHexString(), 1);
      nn.SubItems.Add('     /2');
      ListView1.Items.AddItem(nn);

      // m:=TListItem.Create(self.ListView2.Items);
      // m.Caption:=heto2(trunc(i*power(2,kk)).ToHexString(),1);
      // m.SubItems.Add('     /2');
      //ListView2.Items.AddItem(m);
    end;
    if i = 1 then
      break;
    if (i mod 2) = 1 then
    begin
      i := i * 3 + 1;
      memo1.Lines.add(heto2(i.ToHexString(), 0) + '     3n+1');

      nn := TListItem.Create(self.ListView1.items);
      nn.Caption := heto2(i.ToHexString(), 1);
      nn.SubItems.Add('     3n+1');
      ListView1.Items.AddItem(nn);

      m := TListItem.Create(self.ListView2.items);
      m.Caption := heto2(trunc(i * power(2, kk)).ToHexString(), 1);
      m.SubItems.Add('     3n+1');
      ListView2.Items.AddItem(m);
    end;
    if i = 1 then
      break;
  end;

end;



procedure TForm1.Button2Click(Sender: TObject);
var
  w1, w2, w3: string;
  i, j, kkk, kk, www: integer;
  nn, m, curnode, pnode, findnode, chnode: TTreeNode;
  wwwpath: array[1..300] of integer;
begin
  treeview1.Items.Clear;
  //treeview1.LoadFromFile();  // 这个暂不用
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '1';
  treeview1.Items.Add(curnode, '1');
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '2';
  treeview1.Items.Add(curnode, '2');
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '4';
  treeview1.Items.Add(curnode, '4');
  curnode.Text := '8';
  treeview1.Items.Add(curnode, '8');
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '16';
  //3,10,5,16,8,4,2,1
  curnode := treeview1.Items.Add(curnode, '16');
  pnode := curnode;
  //curnode.Text := '5';
  //treeview1.Items.Add(curnode, '5');
  pnode := treeview1.Items.AddChild(pnode, '5');
  pnode := treeview1.Items.AddChild(pnode, '3');
  //curnode := TTreeNode.Create(treeview1.Items);
  //curnode.Text := '3';
  //treeview1.Items.Add(curnode, '3');
  //3,10,5,16,8,4,2,1
  kkk := StrToInt(edit2.Text);
  for j := 7 to kkk do
  begin
    i := j;
    kk := 0;
    if (i mod 2) = 0 then
      continue;

    for www := 1 to 300 do
      wwwpath[www] := 0;
    while True do
    begin
      if i = 1 then
        break;
      if (i mod 2) = 0 then
      begin
        i := i div 2;
      end;
      if i = 1 then
        break;
      if is2power(i) then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        break;
      end;
      if (i mod 2) = 1 then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        i := i * 3 + 1;
      end;
      if i = 1 then
        break;
      if is2power(i) then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        break;
      end;
    end;
    pnode := nil;
    chnode := nil;
    findnode := nil;
    for www := 300 downto 1 do
    begin
      if ((wwwpath[www] > 0) and (not is2power(wwwpath[www]))) then
      begin
        findnode := treeview1.Items.FindNodeWithText(IntToStr(wwwpath[www]));
        if findnode <> nil then
          continue;
        if is2power(wwwpath[www + 1]) then
        begin
          findnode := treeview1.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview1.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview1.Items.Add(curnode, IntToStr(wwwpath[www + 1]));

          end
          else
            pnode := findnode;

          pnode := treeview1.Items.AddChild(pnode, IntToStr(wwwpath[www]));
        end;
        if not is2power(wwwpath[www + 1]) then //else
        begin
          findnode := treeview1.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview1.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview1.Items.Add(curnode, IntToStr(wwwpath[www + 1]));

          end
          else
            pnode := findnode;

          pnode := treeview1.Items.AddChild(pnode, IntToStr(wwwpath[www]));

        end;
      end;
    end;
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  w1, w2, w3: string;
  i, j, kkk, kk, www: integer;
  nn, m, curnode, pnode, findnode, chnode: TTreeNode;
  wwwpath: array[1..300] of integer;
begin
  treeview1.Items.Clear;
  treeview1.ScrollBars := ssboth;
  //treeview1.ScrollBars:=;
  //treeview1.LoadFromFile();  // 这个暂不用
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '1';
  treeview1.Items.Add(curnode, '1');
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '2';
  treeview1.Items.Add(curnode, '2');
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '4';
  treeview1.Items.Add(curnode, '4');
  curnode.Text := '8';
  treeview1.Items.Add(curnode, '8');
  curnode := TTreeNode.Create(treeview1.Items);
  curnode.Text := '16';
  //3,10,5,16,8,4,2,1
  curnode := treeview1.Items.Add(curnode, '16');
  pnode := curnode;
  //curnode.Text := '5';
  //treeview1.Items.Add(curnode, '5');
  pnode := treeview1.Items.AddChild(pnode, '5');
  pnode := treeview1.Items.AddChild(pnode, '3');
  //curnode := TTreeNode.Create(treeview1.Items);
  //curnode.Text := '3';
  //treeview1.Items.Add(curnode, '3');
  //3,10,5,16,8,4,2,1
  kkk := StrToInt(edit2.Text);
  for j := 7 to kkk do
  begin
    i := j;
    kk := 0;
    if (i mod 2) = 0 then
      continue;

    for www := 1 to 300 do
      wwwpath[www] := 0;
    while True do
    begin
      if i = 1 then
        break;
      if (i mod 2) = 0 then
      begin
        if is3power_1(i) then
        begin
          kk := kk + 1;
          wwwpath[kk] := i;
        end;
        i := i div 2;
      end;
      if i = 1 then
        break;
      if is2power(i) then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        break;
      end;
      if (i mod 2) = 1 then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        i := i * 3 + 1;
      end;
      if i = 1 then
        break;
      if is2power(i) then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        break;
      end;
    end;
    pnode := nil;
    chnode := nil;
    findnode := nil;
    for www := 300 downto 1 do
    begin
      if ((wwwpath[www] > 0) and (not is2power(wwwpath[www]))) then
      begin
        findnode := treeview1.Items.FindNodeWithText(IntToStr(wwwpath[www]));
        if findnode <> nil then
          continue;
        if is3power_1(wwwpath[www]) then
        begin
          findnode := treeview1.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview1.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview1.Items.Add(curnode, IntToStr(wwwpath[www + 1]));

          end
          else
            pnode := findnode;

          pnode := treeview1.Items.AddChild(pnode, IntToStr(wwwpath[www]));
          pnode.ImageIndex := 1;

          continue;
        end;
        if is2power(wwwpath[www + 1]) then
        begin
          findnode := treeview1.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview1.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview1.Items.Add(curnode, IntToStr(wwwpath[www + 1]));

          end
          else
            pnode := findnode;

          pnode := treeview1.Items.AddChild(pnode, IntToStr(wwwpath[www]));
        end;
        if not is2power(wwwpath[www + 1]) then //else
        begin
          findnode := treeview1.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview1.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview1.Items.Add(curnode, IntToStr(wwwpath[www + 1]));

          end
          else
            pnode := findnode;

          pnode := treeview1.Items.AddChild(pnode, IntToStr(wwwpath[www]));
          if is2power_1(wwwpath[www]) then
            pnode.ImageIndex := 0;
        end;
      end;
      if pnode <> nil then
      begin
        //if treeview1.Width < pnode.Level * 20 then
        if TCustomTreeView111(treeview1).maxwidth<(pnode.Level * 20+20)  then
        begin
        // treeview1.Width := pnode.Level * 20;
         //scrollbox2.HorzScrollBar.Range := treeview1.Width + 20;
          TCustomTreeView111(treeview1).maxwidth:=pnode.Level * 20+20;
        end;
        //if treeview1.Height < pnode.AbsoluteIndex * 10 then
        begin
          // treeview1.Height := pnode.AbsoluteIndex * 10;
          //scrollbox2.VertScrollBar.Range := treeview1.Height + 20;
        end;
        // if treeview1.Height < pnode.AbsoluteIndex * pnode.Height then
        begin
          //treeview1.Height := pnode.AbsoluteIndex * pnode.Height;
          //scrollbox2.VertScrollBar.Range := treeview1.Height + 20;
        end;
      end;
    end;
  end;
   // TCustomTreeView111(treeview1).SetScrolledleft(1);
  TCustomTreeView111(treeview1).UpdateMaxRight;
  TCustomTreeView111(treeview1).UpdateScrollbars;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: integer;
  c: string;
  n: ttreenode;
begin
  c := seaknum.Text;
  ;
  // for i := 0 to treeview1.Items.Count-1 do
  begin
    //  if treeview1.Items[i].Text=c then
    begin
      //    treeview1.Items[i].Focused:=true;
    end;
  end;

  n := treeview1.Items.FindNodeWithText(c);
  if n <> nil then
  begin
    n.Focused := True;
    n.selected := True;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
// Chart1LineSeries1: TLineSeries;
//  Chart1LineSeries1.Clear;
// Chart1LineSeries1.AddXY(1, 1000, 'Apple');
// Chart1LineSeries1.AddXY(2, 400, 'Orange');
// Chart1LineSeries1.AddXY(3, 10, 'Banana');
var
  w1, w2, w3: string;
  i, j, kkk, kk, www: integer;
  nn, m, curnode, pnode, findnode, chnode: TTreeNode;
  wwwpath: array[1..300] of integer;
  Chart1LineSeries111: TLineSeries;
  fff: TFFF;
begin
  chart1.ClearSeries;
  treeview2.Items.Clear;
  linesSeries.Clear;
  lineslables.Clear;
  treeview2.ScrollBars := ssboth;
  //treeview2.ScrollBars:=;
  //treeview2.LoadFromFile();  // 这个暂不用
  //if sqltransaction1.Active then  SQLTransaction1.EndTransaction;    ;
  //SQLTransaction1.StartTransaction;
  Chart1LineSeries_CUR := nil;
  SQLTransaction1.Active := True;
  sqlquery1.Close;
  sqlquery1.SQL.Text := 'delete from linesxy ';
  sqlquery1.ExecSQL;
  //SQLQuery1.ApplyUpdates();
  //SQLTransaction1.Commit;

  curnode := TTreeNode.Create(treeview2.Items);
  curnode.Text := '1';
  treeview2.Items.Add(curnode, '1');
  //sqlquery1.Close;
  //sqlquery1.SQL.Text:='insert into  linesxy (x,y,lineid,parentid,linename,linetext) values(1,1,1,0,''1'',''1'')';
  //sqlquery1.ExecSQL;
  //SQLQuery1.ApplyUpdates();
  //SQLTransaction1.Commit;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'select * from linesxy';
  self.SQLQuery1.Open;
  SQLQuery1.Append;//SQLQuery1.Insert;
  SQLQuery1.FieldByName('x').AsLargeInt := 1;
  SQLQuery1.FieldByName('y').AsInteger := 1;
  SQLQuery1.FieldByName('lineid').AsInteger := 1;
  SQLQuery1.FieldByName('parentid').AsInteger := 0;
  SQLQuery1.FieldByName('linename').AsString := '1';
  SQLQuery1.FieldByName('linetext').AsString := '1';
  SQLQuery1.Post;

  curnode := TTreeNode.Create(treeview2.Items);
  curnode.Text := '2';
  treeview2.Items.Add(curnode, '2');
  SQLQuery1.Append;//SQLQuery1.Insert;
  SQLQuery1.FieldByName('x').AsLargeInt := 1;
  SQLQuery1.FieldByName('y').AsInteger := 2;
  SQLQuery1.FieldByName('lineid').AsInteger := 2;
  SQLQuery1.FieldByName('parentid').AsInteger := 1;
  SQLQuery1.FieldByName('linename').AsString := '2';
  SQLQuery1.FieldByName('linetext').AsString := '2';
  SQLQuery1.Post;
  curnode := TTreeNode.Create(treeview2.Items);
  curnode.Text := '4';
  SQLQuery1.Append;//SQLQuery1.Insert;
  SQLQuery1.FieldByName('x').AsLargeInt := 1;
  SQLQuery1.FieldByName('y').AsInteger := 3;
  SQLQuery1.FieldByName('lineid').AsInteger := 4;
  SQLQuery1.FieldByName('parentid').AsInteger := 2;
  SQLQuery1.FieldByName('linename').AsString := '4';
  SQLQuery1.FieldByName('linetext').AsString := '4';
  SQLQuery1.Post;
  treeview2.Items.Add(curnode, '4');
  curnode.Text := '8';
  treeview2.Items.Add(curnode, '8');
  SQLQuery1.Append;//SQLQuery1.Insert;
  SQLQuery1.FieldByName('x').AsLargeInt := 1;
  SQLQuery1.FieldByName('y').AsInteger := 4;
  SQLQuery1.FieldByName('lineid').AsInteger := 8;
  SQLQuery1.FieldByName('parentid').AsInteger := 0;
  SQLQuery1.FieldByName('linename').AsString := '8';
  SQLQuery1.FieldByName('linetext').AsString := '8';
  SQLQuery1.Post;
  curnode := TTreeNode.Create(treeview2.Items);
  curnode.Text := '16';
  //3,10,5,16,8,4,2,1
  curnode := treeview2.Items.Add(curnode, '16');
  SQLQuery1.Append;//SQLQuery1.Insert;
  SQLQuery1.FieldByName('x').AsLargeInt := 1;
  SQLQuery1.FieldByName('y').AsInteger := 5;
  SQLQuery1.FieldByName('lineid').AsInteger := 16;
  SQLQuery1.FieldByName('parentid').AsInteger := 0;
  SQLQuery1.FieldByName('linename').AsString := '16';
  SQLQuery1.FieldByName('linetext').AsString := '16';
  SQLQuery1.Post;
  pnode := curnode;
  //curnode.Text := '5';
  //treeview2.Items.Add(curnode, '5');
  pnode := treeview2.Items.AddChild(pnode, '5');
  SQLQuery1.Append;//SQLQuery1.Insert;
  SQLQuery1.FieldByName('x').AsLargeInt := 2;
  SQLQuery1.FieldByName('y').AsInteger := 6;
  SQLQuery1.FieldByName('lineid').AsInteger := 5;
  SQLQuery1.FieldByName('parentid').AsInteger := 16;
  SQLQuery1.FieldByName('linename').AsString := '5';
  SQLQuery1.FieldByName('linetext').AsString := '5';
  SQLQuery1.Post;
  pnode := treeview2.Items.AddChild(pnode, '3');
  SQLQuery1.Append;//SQLQuery1.Insert;
  SQLQuery1.FieldByName('x').AsLargeInt := 3;
  SQLQuery1.FieldByName('y').AsInteger := 7;
  SQLQuery1.FieldByName('lineid').AsInteger := 3;
  SQLQuery1.FieldByName('parentid').AsInteger := 5;
  SQLQuery1.FieldByName('linename').AsString := '3';
  SQLQuery1.FieldByName('linetext').AsString := '3';
  SQLQuery1.Post;
  //curnode := TTreeNode.Create(treeview2.Items);
  //curnode.Text := '3';
  //treeview2.Items.Add(curnode, '3');
  //3,10,5,16,8,4,2,1
  kkk := StrToInt(edit4.Text);
  chart1.Tag := 0;
  for j := 7 to kkk do
  begin
    i := j;
    kk := 0;
    if (i mod 2) = 0 then
      continue;

    for www := 1 to 300 do
      wwwpath[www] := 0;
    while True do
    begin
      if i = 1 then
        break;
      if (i mod 2) = 0 then
      begin
        if is3power_1(i) then
        begin
          kk := kk + 1;
          wwwpath[kk] := i;
        end;
        i := i div 2;
      end;
      if i = 1 then
        break;
      if is2power(i) then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        break;
      end;
      if (i mod 2) = 1 then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        i := i * 3 + 1;
      end;
      if i = 1 then
        break;
      if is2power(i) then
      begin
        kk := kk + 1;
        wwwpath[kk] := i;
        break;
      end;
    end;
    pnode := nil;
    chnode := nil;
    findnode := nil;
    Chart1LineSeries111 := TLineSeries.Create(chart1);
    Chart1LineSeries111.Clear;
    chart1.AddSeries(Chart1LineSeries111);
    //Chart1LineSeries_CUR:= Chart1LineSeries111;
    chart1.Tag := chart1.Tag + 1;
    chart1.Hint := IntToStr(chart1.Tag);
    Chart1LineSeries111.ShowPoints := True;
    Chart1LineSeries111.Pointer.Visible := True;
    Chart1LineSeries111.ShowLines := True;
    Chart1LineSeries111.ShowInLegend := True;     //Chart1LineSeries1GetMark
    Chart1LineSeries111.Title := 'line' + IntToStr(chart1.Tag);
    Chart1LineSeries111.Marks.Style := smsLabel;  // self.Chart1LineSeries1GetMark();
    //Chart1LineSeries111.OnGetMark:= @self.Chart1LineSeries1GetMark;
    fff := TFFF.Create;
    fff.www := Chart1LineSeries111;
    Chart1LineSeries111.OnGetMark := @fff.GetMark;
    linesSeries.Add(Chart1LineSeries111);
    lineslables.Add(fff);
    // Chart1LineSeries111.OnCustomDrawPointer:=Chart1LineSeries1.onCustomDrawPointer;
    // Chart1LineSeries1.AddXY(1, 1000, 'Apple');
    // Chart1LineSeries1.AddXY(2, 400, 'Orange');
    // Chart1LineSeries1.AddXY(3, 10, 'Banana');
    for www := 300 downto 1 do
    begin
      if ((wwwpath[www] > 0) and (not is2power(wwwpath[www]))) then
      begin
        findnode := treeview2.Items.FindNodeWithText(IntToStr(wwwpath[www]));
        if findnode <> nil then
          continue;
        if is3power_1(wwwpath[www]) then
        begin
          findnode := treeview2.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview2.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview2.Items.Add(curnode, IntToStr(wwwpath[www + 1]));
            //Chart1LineSeries111.AddXY(www, wwwpath[www + 1], 'L' + IntToStr(chart1.Tag));
            Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, StrToInt(pnode.Text),
              'L' + pnode.Text, $0000FF);
            //Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, pnode.Level, [1,2,3], 'L' + pnode.Text);
            //Chart1LineSeries111.AddX(pnode.AbsoluteIndex, 'L' + pnode.Text);
            //Chart1LineSeries111.AddY(pnode.Level, 'L' + pnode.Text);
            SQLQuery1.Append;//SQLQuery1.Insert;
            SQLQuery1.FieldByName('x').AsLargeInt := pnode.Level;
            SQLQuery1.FieldByName('y').AsInteger := pnode.AbsoluteIndex;
            SQLQuery1.FieldByName('lineid').AsInteger := StrToInt(pnode.Text);
            if pnode.Parent <> nil then
              SQLQuery1.FieldByName('parentid').AsInteger := StrToInt(pnode.Parent.Text);
            SQLQuery1.FieldByName('linename').AsString := pnode.Text;
            SQLQuery1.FieldByName('linetext').AsString := pnode.Text;
            SQLQuery1.Post;
          end
          else
            pnode := findnode;

          pnode := treeview2.Items.AddChild(pnode, IntToStr(wwwpath[www]));
          //Chart1LineSeries111.AddXY(www, wwwpath[www + 1], 'L' + IntToStr(chart1.Tag));
          Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, StrToInt(pnode.Text),
            'L' + pnode.Text, $0000FF);
          //Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, pnode.Level, [1,2,3], 'L' + pnode.Text);
          //Chart1LineSeries111.AddX(pnode.AbsoluteIndex, 'L' + pnode.Text);
          //Chart1LineSeries111.AddY(pnode.Level, 'L' + pnode.Text);
          pnode.ImageIndex := 1;
          SQLQuery1.Append;//SQLQuery1.Insert;
          SQLQuery1.FieldByName('x').AsLargeInt := pnode.Level;
          SQLQuery1.FieldByName('y').AsInteger := pnode.AbsoluteIndex;
          SQLQuery1.FieldByName('lineid').AsInteger := StrToInt(pnode.Text);
          if pnode.Parent <> nil then
            SQLQuery1.FieldByName('parentid').AsInteger := StrToInt(pnode.Parent.Text);
          SQLQuery1.FieldByName('linename').AsString := pnode.Text;
          SQLQuery1.FieldByName('linetext').AsString := pnode.Text;
          SQLQuery1.Post;
          continue;
        end;
        if is2power(wwwpath[www + 1]) then
        begin
          findnode := treeview2.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview2.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview2.Items.Add(curnode, IntToStr(wwwpath[www + 1]));
            //Chart1LineSeries111.AddXY(www, wwwpath[www + 1], 'L' + IntToStr(chart1.Tag));
            Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, StrToInt(pnode.Text),
              'L' + pnode.Text, $0000FF);
            //Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, pnode.Level, [1,2,3], 'L' + pnode.Text);
            //Chart1LineSeries111.AddX(pnode.AbsoluteIndex, 'L' + pnode.Text);
            //Chart1LineSeries111.AddY(pnode.Level, 'L' + pnode.Text);
            pnode.ImageIndex := 1;
            SQLQuery1.Append;//SQLQuery1.Insert;
            SQLQuery1.FieldByName('x').AsLargeInt := pnode.Level;
            SQLQuery1.FieldByName('y').AsInteger := pnode.AbsoluteIndex;
            SQLQuery1.FieldByName('lineid').AsInteger := StrToInt(pnode.Text);
            if pnode.Parent <> nil then
              SQLQuery1.FieldByName('parentid').AsInteger := StrToInt(pnode.Parent.Text);
            SQLQuery1.FieldByName('linename').AsString := pnode.Text;
            SQLQuery1.FieldByName('linetext').AsString := pnode.Text;
            SQLQuery1.Post;
          end
          else
            pnode := findnode;

          pnode := treeview2.Items.AddChild(pnode, IntToStr(wwwpath[www]));
          //Chart1LineSeries111.AddXY(www, wwwpath[www + 1], 'L' + IntToStr(chart1.Tag));
          Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, StrToInt(pnode.Text),
            'L' + pnode.Text, $0000FF);
          //Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, pnode.Level, [1,2,3], 'L' + pnode.Text);
          //Chart1LineSeries111.AddX(pnode.AbsoluteIndex, 'L' + pnode.Text);
          //Chart1LineSeries111.AddY(pnode.Level, 'L' + pnode.Text);
          pnode.ImageIndex := 1;
          SQLQuery1.Append;//SQLQuery1.Insert;
          SQLQuery1.FieldByName('x').AsLargeInt := pnode.Level;
          SQLQuery1.FieldByName('y').AsInteger := pnode.AbsoluteIndex;
          SQLQuery1.FieldByName('lineid').AsInteger := StrToInt(pnode.Text);
          if pnode.Parent <> nil then
            SQLQuery1.FieldByName('parentid').AsInteger := StrToInt(pnode.Parent.Text);
          SQLQuery1.FieldByName('linename').AsString := pnode.Text;
          SQLQuery1.FieldByName('linetext').AsString := pnode.Text;
          SQLQuery1.Post;
        end;
        if not is2power(wwwpath[www + 1]) then //else
        begin
          findnode := treeview2.Items.FindNodeWithText(IntToStr(wwwpath[www + 1]));
          if findnode = nil then
          begin
            curnode := TTreeNode.Create(treeview2.Items);
            curnode.Text := IntToStr(wwwpath[www + 1]);
            pnode := treeview2.Items.Add(curnode, IntToStr(wwwpath[www + 1]));
            //Chart1LineSeries111.AddXY(www, wwwpath[www + 1], 'L' + IntToStr(chart1.Tag));
            Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, StrToInt(pnode.Text),
              'L' + pnode.Text, $0000FF);
            //Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, pnode.Level, [1,2,3], 'L' + pnode.Text);
            //Chart1LineSeries111.AddX(pnode.AbsoluteIndex, 'L' + pnode.Text);
            //Chart1LineSeries111.AddY(pnode.Level, 'L' + pnode.Text);
            pnode.ImageIndex := 1;
            SQLQuery1.Append;//SQLQuery1.Insert;
            SQLQuery1.FieldByName('x').AsLargeInt := pnode.Level;
            SQLQuery1.FieldByName('y').AsInteger := pnode.AbsoluteIndex;
            SQLQuery1.FieldByName('lineid').AsInteger := StrToInt(pnode.Text);
            if pnode.Parent <> nil then
              SQLQuery1.FieldByName('parentid').AsInteger := StrToInt(pnode.Parent.Text);
            SQLQuery1.FieldByName('linename').AsString := pnode.Text;
            SQLQuery1.FieldByName('linetext').AsString := pnode.Text;
            SQLQuery1.Post;
          end
          else
            pnode := findnode;

          pnode := treeview2.Items.AddChild(pnode, IntToStr(wwwpath[www]));
          //Chart1LineSeries111.AddXY(www, wwwpath[www + 1], 'L' + IntToStr(chart1.Tag));
          Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, StrToInt(pnode.Text),
            'L' + pnode.Text, $0000FF);
          //Chart1LineSeries111.AddXY(pnode.AbsoluteIndex, pnode.Level, [1,2,3], 'L' + pnode.Text);
          //Chart1LineSeries111.AddX(pnode.AbsoluteIndex, 'L' + pnode.Text);
          //Chart1LineSeries111.AddY(pnode.Level, 'L' + pnode.Text);
          pnode.ImageIndex := 1;
          SQLQuery1.Append;//SQLQuery1.Insert;
          SQLQuery1.FieldByName('x').AsLargeInt := pnode.Level;
          SQLQuery1.FieldByName('y').AsInteger := pnode.AbsoluteIndex;
          SQLQuery1.FieldByName('lineid').AsInteger := StrToInt(pnode.Text);
          if pnode.Parent <> nil then
            SQLQuery1.FieldByName('parentid').AsInteger := StrToInt(pnode.Parent.Text);
          SQLQuery1.FieldByName('linename').AsString := pnode.Text;
          SQLQuery1.FieldByName('linetext').AsString := pnode.Text;
          SQLQuery1.Post;

          if is2power_1(wwwpath[www]) then
            pnode.ImageIndex := 0;
        end;
      end;
    end;
  end;
  SQLQuery1.ApplyUpdates();
  SQLTransaction1.Commit;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  Chart1LineSeries111: TLineSeries;
  i, j: integer;
  x, y, lineid, parentid: integer;
  linename, linetext: string;
begin
  chart1.ClearSeries;
  Chart1LineSeries111 := TLineSeries.Create(chart1);
  Chart1LineSeries111.Clear;
  chart1.AddSeries(Chart1LineSeries111);
  Chart1LineSeries111.ShowPoints := True;
  Chart1LineSeries111.Pointer.Visible := True;
  Chart1LineSeries111.ShowLines := True;
  Chart1LineSeries111.ShowInLegend := True;
  Chart1LineSeries111.Marks.Style := smsLabel;
  //self.SQLite3Connection1.StartTransaction;
  SQLTransaction1.Active := True;
  //SQLTransaction1.EndTransaction;
  //SQLTransaction1.StartTransaction;
  sqlquery1.Close;
  sqlquery1.SQL.Text := 'delete from  linesxy where linetext=''-1''';
  sqlquery1.ExecSQL;
  //SQLQuery1.ApplyUpdates();
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'select * from linesxy';
  self.SQLQuery1.Open;
  SQLQuery1.Tag := SQLQuery1.RecordCount;
  j := StrToInt(edit3.Text);
  for  i := 1 to 1000 do
  begin

    SQLQuery1.Close;
    SQLQuery1.SQL.Text := 'select * from linesxy where lineid=' + IntToStr(j);
    self.SQLQuery1.Open;
    if sqlquery1.RecordCount = 1 then
    begin

      x := SQLQuery1.FieldByName('x').AsLargeInt;
      y := SQLQuery1.FieldByName('y').AsInteger;
      lineid := SQLQuery1.FieldByName('lineid').AsInteger;
      parentid := SQLQuery1.FieldByName('parentid').AsInteger;
      linename := SQLQuery1.FieldByName('linename').AsString;
      linetext := SQLQuery1.FieldByName('linetext').AsString;
      j := parentid;
      if parentid <> 1 then
      begin
        SQLQuery1.Append;
        //SQLQuery1.Insert;
        SQLQuery1.FieldByName('x').AsLargeInt := y;
        SQLQuery1.FieldByName('y').AsInteger := lineid;
        SQLQuery1.FieldByName('lineid').AsInteger := lineid;
        SQLQuery1.FieldByName('parentid').AsInteger := parentid;
        SQLQuery1.FieldByName('linename').AsString := linename;
        SQLQuery1.FieldByName('linetext').AsString := '-1';
        SQLQuery1.Post;
        SQLQuery1.ApplyUpdates();
      end
      else
        break;
    end
    else
      break;
    //SQLQuery1.Tag := SQLQuery1.RecordCount;
  end;

  SQLQuery1.ApplyUpdates();
  //sqlquery1.Close;
  //sqlquery1.SQL.Text:='insert into  linesxy (x,y,lineid,parentid,linename,linetext) values(1,1,1,0,''1'',''1'')';
  //sqlquery1.ExecSQL;
  //SQLQuery1.ApplyUpdates();
  SQLTransaction1.Commit;

  SQLTransaction1.Active := True;
  SQLQuery1.Close;
  SQLQuery1.SQL.Text := 'select * from linesxy where linetext=''-1''';
  self.SQLQuery1.Open;
  SQLQuery1.Tag := SQLQuery1.RecordCount;
  //self.SQLite3Connection1.CloseTransactions;
  //self.SQLite3Connection1.EndTransaction;
  Chart1LineSeries111.Source := self.DbChartSource1;
  // self.SQLite3Connection1.Connected:=true;
  //TLineSeries(self.Chart1.Series[1]).Source:=self.DbChartSource1;
  SQLTransaction1.Active := True;
  self.SQLConnector1.Connected := True;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  a:tclassa;
  b:tclassb;
begin
  //scrollbar1.Tag := scrollbar1.Tag + 100;
  //TCustomTreeView111(treeview1).SetScrolledTop(scrollbar1.Tag);
  //TCustomTreeView111(treeview1).SetScrolledleft((-1)*scrollbar1.Tag);
  //TCustomTreeView111(treeview1).SetScrolledleft(scrollbar1.Tag);
  //////TCustomTreeView111(treeview1).SetScrolledleft(1);
  //////TCustomTreeView111(treeview1).UpdateScrollbars;
    a:=tclassa.Create;
    b:=tclassb.Create;;
    a.Show('a');
    b.Show('b');
    b.show2('b2');
    tclassa(b).Show('ab');
    tclassb(a).Show('ba');
    tclassb(a).Show2('ba2');

    tclassa(b).Showww('ab');
    tclassb(a).Showww('ba');

    a.Free;
    b.Free;

end;

procedure TForm1.Chart1AfterDraw(ASender: TChart; ADrawer: IChartDrawer);
begin

end;

procedure TForm1.Chart1AxisList0GetMarkText(Sender: TObject;
  var AText: string; AMark: double);
begin
  //AText:='GetMarkText';   // 显示在坐标左边上的坐标字
end;

procedure TForm1.Chart1AxisList0MarkToText(var AText: string; AMark: double);
begin
  // AText:='MarkToText';  //显示在坐标左边上的坐标字
end;

procedure TForm1.Chart1BeforeCustomDrawBackWall(ASender: TChart;
  ADrawer: IChartDrawer; const ARect: TRect; var ADoDefaultDrawing: boolean);
begin

end;

procedure TForm1.Chart1Click(Sender: TObject);
begin

end;

procedure TForm1.Chart1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: boolean);
begin

end;

procedure TForm1.Chart1ExtentChanged(ASender: TChart);
begin

end;

procedure TForm1.Chart1ExtentChanging(ASender: TChart);
begin

end;

procedure TForm1.Chart1LineSeries1ChartMarksGetShape(ASender: TChartTextElement;
  const ABoundingBox: TRect; var APolygon: TPointArray);
begin

end;

procedure TForm1.Chart1LineSeries1ChartSeriesLegendDraw(ACanvas: TCanvas;
  const ARect: TRect; AIndex: integer; AItem: TLegendItem);
begin

end;

procedure TForm1.Chart1LineSeries1CustomDrawPointer(ASender: TChartSeries;
  ADrawer: IChartDrawer; AIndex: integer; ACenter: TPoint);
begin

  //chart1.Hint:=floattostr(ASender.XValue[AIndex])+':'+floattostr(ASender.YValue[AIndex] )+':'+
  //treeview2.Items[trunc(ASender.YValue[AIndex])].Text;
  //ADrawer.
end;

procedure TForm1.Chart1LineSeries1GetMark(out AFormattedMark: string; AIndex: integer);
begin              //TACustomSource.pas
  try
    AFormattedMark := TChartDataItem(
      pointer(Chart1LineSeries_CUR.Source.Item[AIndex])^).Text;
  except
  end;
  AFormattedMark := AFormattedMark + 'ookk' + IntToStr(AIndex);

end;

procedure TForm1.Chart1LineSeries1GetPointerStyle(ASender: TChartSeries;
  AValueIndex: integer; var AStyle: TSeriesPointerStyle);
begin

end;

procedure TForm1.Chart1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin

end;

procedure TForm1.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to linesSeries.Count - 1 do
  begin
    //TLineSeries(linesSeries.Items[i]).Free;
  end;
  for i := 0 to linesLables.Count - 1 do
  begin
    TFFF(linesLables.Items[i]).Free;
  end;
  for i := 0 to linesSeries.Count - 1 do
  begin
    //TLineSeries(linesSeries.Items[i]).Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i: integer;
begin
  for i := 1 to 20 do
  begin
    power2_20[i] := trunc(power(2, i));
    power3_20[i] := trunc(power(3, i));
  end;
  linesSeries := TFPList.Create;       //TList.Create;
  linesLables := TFPList.Create;       //TList.Create;
end;

procedure TForm1.ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
    scrollbar1.Tag := scrollbar1.Tag + 100;
  TCustomTreeView111(treeview1).SetScrolledleft(scrollbar1.Tag);
end;

procedure TForm1.TreeView1AdvancedCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
  var PaintImages, DefaultDraw: boolean);
begin
  //if node <> nil then
  ////Node.TreeView.Hint
  //TCustomTreeView(Sender).Hint := 'index,absolutindex,level' + IntToStr(node.Index) +
  //  ',' + IntToStr(node.AbsoluteIndex) + ',' + IntToStr(node.Level);
end;

procedure TForm1.TreeView1Changing(Sender: TObject; Node: TTreeNode;
  var AllowChange: boolean);
//var
//node: TTreeNode;
begin
  ////node := treeview1.Selected;
  //if node <> nil then
  //begin
  //  Node.TreeView.ShowHint:=false;
  //  Node.TreeView.Hint := 'index,absolutindex,level,text' +
  //    IntToStr(node.Index) + ',' + IntToStr(node.AbsoluteIndex) +
  //    ',' + IntToStr(node.Level) + ',' + node.Text;
  //  application.ProcessMessages;
  //  end;
  // Node.TreeView.ShowHint:=true;
  // application.ProcessMessages;
end;

procedure TForm1.TreeView1Click(Sender: TObject);
var
  node: TTreeNode;
begin

end;

procedure TForm1.TreeView1CustomDraw(Sender: TCustomTreeView;
  const ARect: TRect; var DefaultDraw: boolean);
begin

end;

procedure TForm1.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: boolean);
begin
  //TCustomTreeView(Sender).ScrollBars:=ssboth;
  //TCustomTreeView(Sender).MakeSelectionVisible;
  // if edit2.Text='1' then
  // caption:=caption+'1';
  //if 1 = 2 then
  //  if TCustomTreeView(Sender).Width < node.Level * 20 then
  //  begin
  //    TCustomTreeView(Sender).Width := node.Level * 20;
  //    scrollbox2.HorzScrollBar.Range := TCustomTreeView(Sender).Width + 20;

  //  end;
  //if 1 = 2 then
  //  if TCustomTreeView(Sender).Height < node.AbsoluteIndex * 10 then
  //  begin
  //    TCustomTreeView(Sender).Height := node.AbsoluteIndex * 10;
  //    scrollbox2.VertScrollBar.Range := TCustomTreeView(Sender).Height + 20;

  //  end;
  //if 1=2 then
  //if node <> nil then
  //  Node.TreeView.Hint := 'index,absolutindex,level' + IntToStr(node.Index) +
  //    ',' + IntToStr(node.AbsoluteIndex) + ',' + IntToStr(node.Level);
  DefaultDraw := True;

end;

procedure TForm1.TreeView1DblClick(Sender: TObject);
begin

end;

procedure TForm1.TreeView1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: integer);
begin

end;

procedure TForm1.TreeView1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  node: TTreeNode;
begin
  node := treeview1.Selected;
  // node := treeview1.GetNodeAt(x,y);
  Node.TreeView.ShowHint := False;
  application.ProcessMessages;
  if node <> nil then
  begin
    Node.TreeView.ShowHint := True;
    application.ProcessMessages;
    Node.TreeView.Hint := 'index,absolutindex,level,text' +
      IntToStr(node.Index) + ',' + IntToStr(node.AbsoluteIndex) +
      ',' + IntToStr(node.Level) + ',' + node.Text;
    application.ProcessMessages;
  end;
  application.ProcessMessages;


  //setcursorpos(X+100,Y+100);
  //PlaceMouseCur(111);


  application.ProcessMessages;
  //  Node.TreeView.ShowHint:=true;
  //application.ProcessMessages;
  //treeview1.Items[1].Selected:=true;
  //application.ProcessMessages;
  //node.Selected:=true;
  //application.ProcessMessages;
  //treeview1.Showing:=true;
  // 无法立showhint，可以改用在label或caption上显示乎 . 必要模拟鼠标移动才能自动showhint乎，暂不理
end;

procedure TForm1.TreeView1NodeChanged(Sender: TObject; Node: TTreeNode;
  ChangeReason: TTreeNodeChangeReason);
begin

end;

procedure TForm1.TreeView1SelectionChanged(Sender: TObject);
begin

end;

procedure TForm1.TreeView1ShowHint(Sender: TObject; HintInfo: PHintInfo);
begin

end;

function TForm1.heto2(w: string; F0space: integer): string;
var
  w1, w2, w3: string;
begin
  Result := w;
  Result := Result.Replace('0', '0000', [rfReplaceAll]);
  Result := Result.Replace('1', '0001', [rfReplaceAll]);
  Result := Result.Replace('2', '0010', [rfReplaceAll]);
  Result := Result.Replace('3', '0011', [rfReplaceAll]);
  Result := Result.Replace('4', '0100', [rfReplaceAll]);
  Result := Result.Replace('5', '0101', [rfReplaceAll]);
  Result := Result.Replace('6', '0110', [rfReplaceAll]);
  Result := Result.Replace('7', '0111', [rfReplaceAll]);
  Result := Result.Replace('8', '1000', [rfReplaceAll]);
  Result := Result.Replace('9', '1001', [rfReplaceAll]);
  Result := Result.Replace('A', '1010', [rfReplaceAll]);
  Result := Result.Replace('B', '1011', [rfReplaceAll]);
  Result := Result.Replace('C', '1100', [rfReplaceAll]);
  Result := Result.Replace('D', '1101', [rfReplaceAll]);
  Result := Result.Replace('E', '1110', [rfReplaceAll]);
  Result := Result.Replace('F', '1111', [rfReplaceAll]);
  //result:=w.Replace('F','0000',[rfReplaceAll]);
  if F0space = 1 then
  begin
    w1 := Result;
    w3 := w1.Replace('0', space(1), [rfReplaceAll]);
    w2 := w1.Replace('0', space(1), [rfReplaceAll]);
    w2 := w2.TrimLeft;
    w2 := w2.Replace(space(1), '0', [rfReplaceAll]);
    // result:=leftstr(w1,length(w3)-length(w2))+w2;
    Result := leftstr(w3, length(w3) - length(w2)) + w2;
  end;

end;

function TForm1.is2power(i: integer): boolean;
var
  j: integer;
begin
  Result := False;
  for j := 1 to 20 do
    if i = power2_20[j] then
    begin
      Result := True;
      break;
    end;
end;

function TForm1.is3power_1(i: integer): boolean;
var
  j: integer;
begin
  Result := False;
  for j := 3 to 20 do   ///
    if (i = (power3_20[j] - 1)) then
    begin
      Result := True;
      break;
    end;
end;

function TForm1.is2power_1(i: integer): boolean;
var
  j: integer;
begin
  Result := False;
  for j := 1 to 20 do
    if (i = (power2_20[j] - 1)) then
    begin
      Result := True;
      break;
    end;
end;

{ TFFF }

procedure TFFF.GetMark(out AFormattedMark: string; AIndex: integer);
begin              //TACustomSource.pas
  try
    AFormattedMark := TChartDataItem(pointer(self.www.Source.Item[AIndex])^).Text;
  except
  end;
  //AFormattedMark := AFormattedMark + 'ookk' + IntToStr(AIndex);

end;

{ TCustomTreeView111 }

procedure TCustomTreeView111.UpdateScrollbars;
begin
  Invalidate;
  inherited;
end;
//
//procedure TCustomTreeView111.ScrollView(DeltaX, DeltaY: integer);
//begin
//  Invalidate;
//  inherited ScrollView(DeltaX, DeltaY);
//  //inherited ;
//end;

procedure TCustomTreeView111.Invalidate;
begin
  inherited Invalidate;
end;

procedure TCustomTreeView111.UpdateMaxRight;
begin
  inherited UpdateMaxRight;
  FMaxRight:=maxwidth;
end;
//
//function TCustomTreeView111.GetMaxScrollLeft: integer;
////begin
////  Result:=inherited GetMaxScrollLeft;
////end;
//begin
//  UpdateMaxRight;
//  Result:=FMaxRight-(ClientWidth-2*BorderWidth);
//  if Result<0 then Result:=0;
//end;
//
//
//procedure TCustomTreeView111.SetScrolledTop(AValue: integer);
//begin
//  Invalidate;
//  inherited; inherited;
//  //inherited SetScrolledTop(AValue);
//
//end;
//
//procedure TCustomTreeView111.SetScrolledLeft(AValue: integer);
////begin
////   Invalidate;
////  inherited; inherited;
////end;
//var
//  OldScrolledLeft: Integer;
//begin
//  OldScrolledLeft := TCustomTreeView(self).FScrolledLeft;
//  if AValue<0 then AValue:=0;
//  if AValue=TCustomTreeView(self).FScrolledLeft then exit;
//  if AValue>GetMaxScrollLeft then AValue:=GetMaxScrollLeft;
//  if AValue=FScrolledLeft then exit;
//  EndEditing(true);
//  TCustomTreeView(self).FScrolledLeft:=AValue;
//  ScrollView(OldScrolledLeft-TCustomTreeView(self).FScrolledLeft, 0);
//end;



end.
