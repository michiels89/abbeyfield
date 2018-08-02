!function(a){Craft.MatrixInput=Garnish.Base.extend({id:null,blockTypes:null,blockTypesByHandle:null,inputNamePrefix:null,inputIdPrefix:null,maxBlocks:null,showingAddBlockMenu:!1,addBlockBtnGroupWidth:null,addBlockBtnContainerWidth:null,$container:null,$blockContainer:null,$addBlockBtnContainer:null,$addBlockBtnGroup:null,$addBlockBtnGroupBtns:null,blockSort:null,blockSelect:null,totalNewBlocks:0,init:function(c,d,e,f){this.id=c,this.blockTypes=d,this.inputNamePrefix=e,this.inputIdPrefix=Craft.formatInputId(this.inputNamePrefix),this.maxBlocks=f,this.$container=a("#"+this.id),this.$blockContainer=this.$container.children(".blocks"),this.$addBlockBtnContainer=this.$container.children(".buttons"),this.$addBlockBtnGroup=this.$addBlockBtnContainer.children(".btngroup"),this.$addBlockBtnGroupBtns=this.$addBlockBtnGroup.children(".btn"),this.$addBlockMenuBtn=this.$addBlockBtnContainer.children(".menubtn"),this.$container.data("matrix",this),this.setNewBlockBtn(),this.blockTypesByHandle={};for(var g=0;g<this.blockTypes.length;g++){var h=this.blockTypes[g];this.blockTypesByHandle[h.handle]=h}var i=this.$blockContainer.children(),j=Craft.MatrixInput.getCollapsedBlockIds();this.blockSort=new Garnish.DragSort(i,{handle:"> .actions > .move",axis:"y",filter:a.proxy(function(){return this.blockSort.$targetItem.hasClass("sel")?this.blockSelect.getSelectedItems():this.blockSort.$targetItem},this),collapseDraggees:!0,magnetStrength:4,helperLagBase:1.5,helperOpacity:.9,onSortChange:a.proxy(function(){this.blockSelect.resetItemOrder()},this)}),this.blockSelect=new Garnish.Select(this.$blockContainer,i,{multi:!0,vertical:!0,handle:"> .checkbox, > .titlebar",checkboxMode:!0});for(var g=0;g<i.length;g++){var k=a(i[g]),c=k.data("id"),l="string"==typeof c&&c.match(/new(\d+)/);l&&l[1]>this.totalNewBlocks&&(this.totalNewBlocks=parseInt(l[1]));var m=new b(this,k);m.id&&a.inArray(""+m.id,j)!=-1&&m.collapse()}this.addListener(this.$addBlockBtnGroupBtns,"click",function(b){var c=a(b.target).data("type");this.addBlock(c)}),new Garnish.MenuBtn(this.$addBlockMenuBtn,{onOptionSelect:a.proxy(function(b){var c=a(b).data("type");this.addBlock(c)},this)}),this.updateAddBlockBtn(),this.addListener(this.$container,"resize","setNewBlockBtn"),Garnish.$doc.ready(a.proxy(this,"setNewBlockBtn"))},setNewBlockBtn:function(){(this.addBlockBtnGroupWidth||(this.addBlockBtnGroupWidth=this.$addBlockBtnGroup.width(),this.addBlockBtnGroupWidth))&&this.addBlockBtnContainerWidth!==(this.addBlockBtnContainerWidth=this.$addBlockBtnContainer.width())&&(this.addBlockBtnGroupWidth>this.addBlockBtnContainerWidth?this.showingAddBlockMenu||(this.$addBlockBtnGroup.addClass("hidden"),this.$addBlockMenuBtn.removeClass("hidden"),this.showingAddBlockMenu=!0):this.showingAddBlockMenu&&(this.$addBlockMenuBtn.addClass("hidden"),this.$addBlockBtnGroup.removeClass("hidden"),this.showingAddBlockMenu=!1,navigator.userAgent.indexOf("Safari")!==-1&&Garnish.requestAnimationFrame(a.proxy(function(){this.$addBlockBtnGroup.css("opacity",.99),Garnish.requestAnimationFrame(a.proxy(function(){this.$addBlockBtnGroup.css("opacity","")},this))},this))))},canAddMoreBlocks:function(){return!this.maxBlocks||this.$blockContainer.children().length<this.maxBlocks},updateAddBlockBtn:function(){if(this.canAddMoreBlocks()){this.$addBlockBtnGroup.removeClass("disabled"),this.$addBlockMenuBtn.removeClass("disabled");for(var a=0;a<this.blockSelect.$items.length;a++){var b=this.blockSelect.$items.eq(a).data("block");b&&b.$actionMenu.find("a[data-action=add]").parent().removeClass("disabled")}}else{this.$addBlockBtnGroup.addClass("disabled"),this.$addBlockMenuBtn.addClass("disabled");for(var a=0;a<this.blockSelect.$items.length;a++){var b=this.blockSelect.$items.eq(a).data("block");b&&b.$actionMenu.find("a[data-action=add]").parent().addClass("disabled")}}},addBlock:function(c,d){if(this.canAddMoreBlocks()){this.totalNewBlocks++;for(var e="new"+this.totalNewBlocks,f='<div class="matrixblock" data-id="'+e+'" data-type="'+c+'"><input type="hidden" name="'+this.inputNamePrefix+"["+e+'][type]" value="'+c+'"/><input type="hidden" name="'+this.inputNamePrefix+"["+e+'][enabled]" value="1"/><div class="titlebar"><div class="blocktype">'+this.getBlockTypeByHandle(c).name+'</div><div class="preview"></div></div><div class="checkbox" title="'+Craft.t("Select")+'"></div><div class="actions"><div class="status off" title="'+Craft.t("Disabled")+'"></div><a class="settings icon menubtn" title="'+Craft.t("Actions")+'" role="button"></a> <div class="menu"><ul class="padded"><li><a data-icon="collapse" data-action="collapse">'+Craft.t("Collapse")+'</a></li><li class="hidden"><a data-icon="expand" data-action="expand">'+Craft.t("Expand")+'</a></li><li><a data-icon="disabled" data-action="disable">'+Craft.t("Disable")+'</a></li><li class="hidden"><a data-icon="enabled" data-action="enable">'+Craft.t("Enable")+'</a></li></ul><hr class="padded"/><ul class="padded"><li><a data-icon="remove" data-action="delete">'+Craft.t("Delete")+'</a></li></ul><hr class="padded"/><ul class="padded">',g=0;g<this.blockTypes.length;g++){var h=this.blockTypes[g];f+='<li><a data-icon="+" data-action="add" data-type="'+h.handle+'">'+Craft.t("Add {type} above",{type:h.name})+"</a></li>"}f+='</ul></div><a class="move icon" title="'+Craft.t("Reorder")+'" role="button"></a> </div></div>';var i=a(f);d?i.insertBefore(d):i.appendTo(this.$blockContainer);var j=a('<div class="fields"/>').appendTo(i),k=this.getParsedBlockHtml(this.blockTypesByHandle[c].bodyHtml,e),l=this.getParsedBlockHtml(this.blockTypesByHandle[c].footHtml,e);a(k).appendTo(j),i.css(this.getHiddenBlockCss(i)).velocity({opacity:1,"margin-bottom":10},"fast",a.proxy(function(){i.css("margin-bottom",""),Garnish.$bod.append(l),Craft.initUiElements(j),new b(this,i),this.blockSort.addItems(i),this.blockSelect.addItems(i),this.updateAddBlockBtn(),Garnish.requestAnimationFrame(function(){Garnish.scrollContainerToElement(i)})},this))}},getBlockTypeByHandle:function(a){for(var b=0;b<this.blockTypes.length;b++)if(this.blockTypes[b].handle==a)return this.blockTypes[b]},collapseSelectedBlocks:function(){this.callOnSelectedBlocks("collapse")},expandSelectedBlocks:function(){this.callOnSelectedBlocks("expand")},disableSelectedBlocks:function(){this.callOnSelectedBlocks("disable")},enableSelectedBlocks:function(){this.callOnSelectedBlocks("enable")},deleteSelectedBlocks:function(){this.callOnSelectedBlocks("selfDestruct")},callOnSelectedBlocks:function(a){for(var b=0;b<this.blockSelect.$selectedItems.length;b++)this.blockSelect.$selectedItems.eq(b).data("block")[a]()},getHiddenBlockCss:function(a){return{opacity:0,marginBottom:-a.outerHeight()}},getParsedBlockHtml:function(a,b){return"string"==typeof a?a.replace(/__BLOCK__/g,b):""}},{collapsedBlockStorageKey:"Craft-"+Craft.siteUid+".MatrixInput.collapsedBlocks",getCollapsedBlockIds:function(){return"string"==typeof localStorage[Craft.MatrixInput.collapsedBlockStorageKey]?Craft.filterArray(localStorage[Craft.MatrixInput.collapsedBlockStorageKey].split(",")):[]},setCollapsedBlockIds:function(a){localStorage[Craft.MatrixInput.collapsedBlockStorageKey]=a.join(",")},rememberCollapsedBlockId:function(b){if("undefined"!=typeof Storage){var c=Craft.MatrixInput.getCollapsedBlockIds();a.inArray(""+b,c)==-1&&(c.push(b),Craft.MatrixInput.setCollapsedBlockIds(c))}},forgetCollapsedBlockId:function(b){if("undefined"!=typeof Storage){var c=Craft.MatrixInput.getCollapsedBlockIds(),d=a.inArray(""+b,c);d!=-1&&(c.splice(d,1),Craft.MatrixInput.setCollapsedBlockIds(c))}}});var b=Garnish.Base.extend({matrix:null,$container:null,$titlebar:null,$fieldsContainer:null,$previewContainer:null,$actionMenu:null,$collapsedInput:null,isNew:null,id:null,collapsed:!1,init:function(b,c){this.matrix=b,this.$container=c,this.$titlebar=c.children(".titlebar"),this.$previewContainer=this.$titlebar.children(".preview"),this.$fieldsContainer=c.children(".fields"),this.$container.data("block",this),this.id=this.$container.data("id"),this.isNew=!this.id||"string"==typeof this.id&&"new"==this.id.substr(0,3);var d=this.$container.find("> .actions > .settings"),e=new Garnish.MenuBtn(d);this.$actionMenu=e.menu.$container,e.menu.settings.onOptionSelect=a.proxy(this,"onMenuOptionSelect"),Garnish.hasAttr(this.$container,"data-collapsed")&&this.collapse(),this._handleTitleBarClick=function(a){a.preventDefault(),this.toggle()},this.addListener(this.$titlebar,"doubletap",this._handleTitleBarClick)},toggle:function(){this.collapsed?this.expand():this.collapse(!0)},collapse:function(b){if(!this.collapsed){this.$container.addClass("collapsed");for(var c="",d=this.$fieldsContainer.children(),e=0;e<d.length;e++){for(var f=a(d[e]),g=f.children(".input").find('select,input[type!="hidden"],textarea,.label'),h="",i=0;i<g.length;i++){var j,k=a(g[i]);if(k.hasClass("label")){var l=k.parent().parent();if(l.hasClass("lightswitch")&&(l.hasClass("on")&&k.hasClass("off")||!l.hasClass("on")&&k.hasClass("on")))continue;j=k.text()}else j=Craft.getText(Garnish.getInputPostVal(k));j instanceof Array&&(j=j.join(", ")),j&&(j=Craft.trim(j),j&&(h&&(h+=", "),h+=j))}h&&(c+=(c?" <span>|</span> ":"")+h)}this.$previewContainer.html(c),this.$fieldsContainer.velocity("stop"),this.$container.velocity("stop"),b?(this.$fieldsContainer.velocity("fadeOut",{duration:"fast"}),this.$container.velocity({height:16},"fast")):(this.$previewContainer.show(),this.$fieldsContainer.hide(),this.$container.css({height:16})),setTimeout(a.proxy(function(){this.$actionMenu.find("a[data-action=collapse]:first").parent().addClass("hidden"),this.$actionMenu.find("a[data-action=expand]:first").parent().removeClass("hidden")},this),200),this.isNew?this.$collapsedInput?this.$collapsedInput.val("1"):this.$collapsedInput=a('<input type="hidden" name="'+this.matrix.inputNamePrefix+"["+this.id+'][collapsed]" value="1"/>').appendTo(this.$container):Craft.MatrixInput.rememberCollapsedBlockId(this.id),this.collapsed=!0}},expand:function(){if(this.collapsed){this.$container.removeClass("collapsed"),this.$fieldsContainer.velocity("stop"),this.$container.velocity("stop");var b=this.$container.height();this.$container.height("auto"),this.$fieldsContainer.show();var c=this.$container.height();if(this.$container.height(b),this.$fieldsContainer.hide().velocity("fadeIn",{duration:"fast"}),this.$container.velocity({height:c},"fast",a.proxy(function(){this.$previewContainer.html(""),this.$container.height("auto")},this)),setTimeout(a.proxy(function(){this.$actionMenu.find("a[data-action=collapse]:first").parent().removeClass("hidden"),this.$actionMenu.find("a[data-action=expand]:first").parent().addClass("hidden")},this),200),!this.isNew&&"undefined"!=typeof Storage){var d=Craft.MatrixInput.getCollapsedBlockIds(),e=a.inArray(""+this.id,d);e!=-1&&(d.splice(e,1),Craft.MatrixInput.setCollapsedBlockIds(d))}this.isNew?this.$collapsedInput&&this.$collapsedInput.val(""):Craft.MatrixInput.forgetCollapsedBlockId(this.id),this.collapsed=!1}},disable:function(){this.$container.children('input[name$="[enabled]"]:first').val(""),this.$container.addClass("disabled"),setTimeout(a.proxy(function(){this.$actionMenu.find("a[data-action=disable]:first").parent().addClass("hidden"),this.$actionMenu.find("a[data-action=enable]:first").parent().removeClass("hidden")},this),200),this.collapse(!0)},enable:function(){this.$container.children('input[name$="[enabled]"]:first').val("1"),this.$container.removeClass("disabled"),setTimeout(a.proxy(function(){this.$actionMenu.find("a[data-action=disable]:first").parent().removeClass("hidden"),this.$actionMenu.find("a[data-action=enable]:first").parent().addClass("hidden")},this),200)},onMenuOptionSelect:function(b){var c=this.matrix.blockSelect.totalSelected>1&&this.matrix.blockSelect.isSelected(this.$container),d=a(b);switch(d.data("action")){case"collapse":c?this.matrix.collapseSelectedBlocks():this.collapse(!0);break;case"expand":c?this.matrix.expandSelectedBlocks():this.expand();break;case"disable":c?this.matrix.disableSelectedBlocks():this.disable();break;case"enable":c?this.matrix.enableSelectedBlocks():(this.enable(),this.expand());break;case"add":var e=d.data("type");this.matrix.addBlock(e,this.$container);break;case"delete":c?confirm(Craft.t("Are you sure you want to delete the selected blocks?"))&&this.matrix.deleteSelectedBlocks():this.selfDestruct()}},selfDestruct:function(){this.$container.velocity(this.matrix.getHiddenBlockCss(this.$container),"fast",a.proxy(function(){this.$container.remove(),this.matrix.updateAddBlockBtn()},this))}})}(jQuery);
//# sourceMappingURL=MatrixInput.js.map