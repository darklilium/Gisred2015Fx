package widgets.Pmgd2.Class
{
	import com.esri.ags.FeatureSet;
	import com.esri.ags.Graphic;
	import com.esri.ags.tasks.QueryTask;
	import com.esri.ags.tasks.supportClasses.Query;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.AsyncResponder;
	import mx.utils.StringUtil;
	
	import widgets.Pmgd2.Skin.Propietario.ListPropietarioSkin;
	import widgets.Pmgd2.Url.Url;
	

	public class QPropietario
	{
		
		
	
		
		
		
		public function QPropietario()
		{
			
	
		}
		/*
		
		protected function filterGrid(event:Event):void
		{
			Alert.show("filter");
			/* To get this function to work, only edit variables filterText, columnArray, gridDataProvider, and dataGridName. 
			Everything else is dynamic. Do not edit variable names. */
		//	var filterText:String = StringUtil.trim(LpSk.txtFilterPropietario.text.toLowerCase()); //Trimmed text String to filter by
		//	var columnArray:Array = ['PERIODO_STAR','PROPIETARIO_PMGD','SIGLA_PMGD','RUT_PMGD','DIRECCION_PROPIETARIO','REPRESENTANTE','TELEFONO','EMAIL']; //Datagrid column names to filter on
			//var gridDataProvider:ArrayCollection = coleccionPropietarios as ArrayCollection; //Name of datagrid's dataprovider. In this case e.g. databases
			//var dataGridName:String = 'DataPropietario'; //Name of the datagrid you are filtering by
		/*	
			//Do not edit code past this point
			var filteredData:Array = [];
			var added:Boolean=false;
			var i:int;
			var j:int;
			
			// Loop Through Grid
			for(i=0; i < gridDataProvider.length; i++){    
				added = false;
				
				//Loop through grid column
				for(j=0; j<columnArray.length; j++){            
					if(gridDataProvider[i][columnArray[j]]!=null){
						
						//Grab datagrid cell contents, trim it, and convert to lowercase for comparison.
						var filterString:String = gridDataProvider[i][columnArray[j]].toString().toLowerCase();
						
						//Compare the datagrid string(filterString) to the user typed string(filterText).  
						if(!added){      
							//If the datagrid string matches the users string, put it into the array.
							if(filterString.indexOf(filterText) != -1){
								filteredData.push(gridDataProvider[i]);
								added = true;
							} 
						}else{
							//Do nothing, break out.
							break;
						}
					}    
				}
			}
		/*	
			//Set datagrid dataprovider
			if(filterText.length == 0){
				this[dataGridName].dataProvider = gridDataProvider; //Display the original unfiltered data
			}else{
				this[dataGridName].dataProvider = filteredData; //Pusht he filtered data into the datagrid
			}
		}
		*/
		
		/*
		public function queryPropietario():void
		{
			
			var queryTask:QueryTask = new QueryTask(widgets.Pmgd.Url.Url.ServicePropietario);
			var query:Query = new Query();
			query.where = "EMPRESA_ID = 6";
			query.outFields = ['*'];
			query.returnGeometry = true;
			queryTask.execute(query, new AsyncResponder(onResultQuery, onFaultQuery));
			
				
			function onResultQuery(featureSet:FeatureSet, token:Object = null):void
			{      
				
				var k:int;
				
				for(k=0;k<featureSet.features.length;k++)
				{
					var recordGraphic:Graphic = featureSet.features[k];
					coleccionPropietarios.addItem({OBJECTID:recordGraphic.attributes["OBJECTID"], 
						PROPIETARIO_ID:recordGraphic.attributes["PROPIETARIO_ID"], 
						PROPIETARIO_PMGD:recordGraphic.attributes["PROPIETARIO_PMGD"],
						SIGLA_PMGD:recordGraphic.attributes["SIGLA_PMGD"],
						RUT_PMGD:recordGraphic.attributes["RUT_PMGD"],
						DIRECCION_PROPIETARIO:recordGraphic.attributes["DIRECCION_PROPIETARIO"],
						REPRESENTANTE:recordGraphic.attributes["REPRESENTANTE"],
						TELEFONO:recordGraphic.attributes["TELEFONO"],
						EMAIL:recordGraphic.attributes["EMAIL"],
						gra:recordGraphic});
				}
				
			
				
			}
			function onFaultQuery(info:Object, token:Object = null):void
			{   
				Alert.show("Error en consulta","Carga de propietarios");
			}
			
			
		}
		*/
	}
}