package gl3d 
{
	import flash.display3D.Context3D;
	import flash.display3D.IndexBuffer3D;
	/**
	 * ...
	 * @author lizhi
	 */
	public class IndexBufferSet 
	{
		private var data:Vector.<uint>;
		private var invalid:Boolean = true;
		public var buff:IndexBuffer3D;
		public function IndexBufferSet(data:Vector.<uint>) 
		{
			this.data = data;
			
		}
		
		public function update(context:Context3D):void 
		{
			if (invalid) {
				var num:int = data.length;
				buff = context.createIndexBuffer(num);
				buff.uploadFromVector(data, 0, num);
				invalid = false;
			}
		}
		
	}

}