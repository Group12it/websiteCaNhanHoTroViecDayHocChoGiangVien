document.getElementById("opentFile").addEventListener('change',function(){
	var fr = new FileReader();
		fr.onload = function(){
		document.getElementById("fileContetnts").textContent = this.result;
		}
		fr.readAsText(this.files[0]);
})