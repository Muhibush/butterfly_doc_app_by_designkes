class ModelGraphValue{
  final int _startMonth;
  final int _endMonth;

  ModelGraphValue(this._startMonth, this._endMonth);

  int get startMonth=>this._startMonth-1>0?this._startMonth-1:0;
  int get endMonth=>this._endMonth-1<13?this._endMonth-1:12;
}