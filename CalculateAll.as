package 
{
	/**
	 * ...
	 * @author alena
	 */
	public class CalculateAll extends Object 
	{
		public var addition:Number = 3;//почему не видит в главной функции??
		public  var current:Number = 0;
		private  var posrednic:Number = 0;
		public var i:int = 0;
		public var j:int = 0;
	public  var arrayCurrent:Array = new Array(); // текущий массив
		public  var arrayMemory:Array = new Array(); // массив запоминающий
		public  var resultArrayInputArcs:Array = new Array();
		public  var resultArrayOutputArcs:Array = new Array();
		public  var arrayOutputArcs:Array = new Array(); // массив ij+
		public  var arrayInputArcs:Array = new Array(); //  массив ij-
		public  var arrayOdnovrInput:Array = new Array(); // для ф-ции суммы двух массивов нужны ли???
		public  var arrayOdnovrOutput:Array = new Array(); // 
		private var array1:Array = new Array();
		private var array2:Array = new Array();
		
		public function CalculateAll() 
		{
			super();
		}
				
		public function doSum(current:Number, addition:Number):Number
		{
			return current += addition;
		}
		//суммирование элементов двух массивов 
		public function doSumArray(array1:Array, array2:Array):Array
		{
			//array1[3]={1,2,3} 
			if (this.array1.length > this.array2.length) 
			{
			for ( i = 0; i < this.array1.length; i++) 
			{
				for ( j = 0; j < this.array2.length; j++) 
				{
					this.resultArrayInputArcs = this.array1[i] + this.array2[j];
				}
			}	
			}
			else 
			for (i = 0; i < array2.length; i++) 
			{
				for ( j = 0; j < array1.length; j++) 
				{
					resultArrayInputArcs = array2[i] + array1[j];
				}
			}
			return resultArrayInputArcs;
		}
		//копирование одного массива в другой
		/*public function CopyArray(array1:Array, array2:Array):Array
		{
			if (this.arrayCurrent.length > this.arrayMemory.length) 
			{
			for ( i = 0; i < this.arrayCurrent.length; i++) 
			{
				for ( j = 0; j < this.arrayMemory.length; j++) 
				{
					this.resultArray = this.arrayCurrent[i] + this.arrayMemory[j];
				}
			}	
			}
			else 
			for (i = 0; i < arrayMemory.length; i++) 
			{
				for ( j = 0; j < arrayCurrent.length; j++) 
				{
					resultArray = arrayMemory[i] + arrayCurrent[j];
				}
			}
			return resultArray;
		}*/
		public function deleteArray (array:Array) : void
		{
			arrayCurrent = array;
			for ( i = 0; i < arrayCurrent.length; i++) 
			{
				trace(arrayCurrent.shift());		//!не корректно!вывод удаляемых элементов массива
			}
		}
		public function clearArray (array:Array) : void
		{
			this.arrayCurrent = array;
			for (var i:int = 0; i < this.arrayCurrent.length; i++) 
			{
				delete this.arrayCurrent[i];		//undefind для элементов массива
			}
		}
		
		public function setCurrent(posrednic:Number):void
		{
			this.current=posrednic;
		}
		public function getCurrent():Number
		{
			return current;
		}
	}
}