$(document).ready(initPage);
var dbPrefix = 'jdbc:mysql://localhost:3306/smap_';
var ontoPrefix = 'http://ws.nju.edu.cn/smap/samples/';
var serviceURL = 'http://ws.nju.edu.cn/smap/getMap';
var mappingType = 'simple';
var selectedSample = -1;
var sample = [
{'owl':'1/univ-cs.owl',
	'db':'utcs',
	'rdf':'1/utcs.rdf'},
{'owl':'2/conference.owl',
	'db':'vldb',
	'rdf':'2/vldb.rdf'},
{'owl':'3/bibliographic.owl',
	'db':'dblp',
	'rdf':'3/dblp.rdf'},
{'owl':'4/bibliographic.owl',
	'db':'observer',
	'rdf':'4/observer.rdf'},
{'owl':'5/factbook.owl',
	'db':'country',
	'rdf':'5/country.rdf'}];

function initPage() {
	$('body').tooltip({selector:'[rel=tooltip]'});
	$('button').bind('click', btnListener);
	$('.sampleBar').bind('click', sampleListener);
}

function btnListener() {
	var btnId = this.id;
	switch(btnId) {
		case 'simpleEnableBtn':
			enableSimple();
			break;
		case 'complexEnableBtn':
			enableComplex();
			break;
		case 'resetBtn':
			reset();
			break;
		case 'submitBtn':
			submit();
			break;
		default:
			break;
	}
}

function submit() {

	$('#resultList').html('');
	$('#results').hide();
	var dbVal = $('#input1').val().trim();
	var owlVal = $('#input2').val().trim();
	var rdfVal = $('#input3').val().trim();
	if(mappingType == 'simple' && dbVal != '' && owlVal != '') {
		$('#resultPane').fadeIn();
		$('#loader').fadeIn();
		$.get(serviceURL,
				{type: mappingType, db:dbVal, onto:owlVal},
				function callback(reply) {
				$('#loader').hide();
				$('#resultType').html('Simple Mapping');
				replyHandler(reply);
				$('#results').slideDown();
				});
	}
	else if(mappingType == 'complex' && dbVal != '' && owlVal != '' && rdfVal != '') {
		$('#resultPane').fadeIn();
		$('#loader').fadeIn();
		$.get(serviceURL,
				{type: mappingType, db:dbVal, onto:owlVal, rdf:rdfVal},
				function callback(reply) {
				$('#loader').hide();
				$('#resultType').html('Complex Mapping');
				replyHandler(reply);
				$('#results').slideDown();
				});
	}
}

function replyHandler(data) {
	var resultArray = data.split('#:#:#');
	var listElement = $('<ul>');
	if(mappingType == 'simple') {
		for(var i = 0; i < resultArray.length - 1; i++) {
			var mapping = resultArray[i].split('!:!')[0];
			var confidence = resultArray[i].split('!:!')[1];
			var listItem = $('<li>');
			$('<a>',{
				rel: "tooltip",
				title: "confidence: <strong>" + confidence + "</strong>",
				text: mapping
			}).appendTo(listItem);
			listItem.appendTo(listElement);
		}
	}
	else if(mappingType == 'complex') {
		for(var i = 0; i < resultArray.length - 1; i++) {
			var mapping = resultArray[i];
			var listItem = $('<li>');
			$('<a>',{
				text: mapping
			}).appendTo(listItem);
			listItem.appendTo(listElement);
		}
	}
	$('#resultList').append(listElement);
}

function reset() {
	$('#input1').val('');
	$('#input2').val('');
	$('#input3').val('');
	$('#resultPane').hide();
	if(selectedSample != -1) {
		$('#sample-'+selectedSample).attr('class','label label-warning sampleBar');
	}
	selectedSample = -1;
}

function sampleListener() {
	if(selectedSample != -1) {
		$('#sample-'+selectedSample).attr('class','label label-warning sampleBar');
	}
	selectedSample = this.id.split('-')[1];
	$('#sample-'+selectedSample).attr('class','label label-success sampleBar');
	var owlPath = sample[selectedSample]['owl'];
	var dbPath = sample[selectedSample]['db'];
	var rdfPath = sample[selectedSample]['rdf'];
	$('#input1').val(dbPrefix + dbPath);
	$('#input2').val(ontoPrefix + owlPath);
	$('#input3').val(ontoPrefix + rdfPath);
}

function enableSimple() {
	$('#input-group3').fadeOut();//hide('slow');
	mappingType = 'simple';
}

function enableComplex() {
	$('#input-group3').fadeIn();//show('slow');
	mappingType = 'complex';
}
