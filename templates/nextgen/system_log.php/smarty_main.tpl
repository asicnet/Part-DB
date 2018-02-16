{locale path="nextgen/locale" domain="partdb"}

<div class="panel panel-default">
    <div class="panel-heading">
        <a data-toggle="collapse" class="link-collapse text-default" href="#panel-filter"><i class="fa fa-filter fa-fw" aria-hidden="true"></i>
            {t}Filter{/t}
        </a>
    </div>
    <div class="panel-collapse collapse panel-body" id="panel-filter">
        <form class="form-horizontal no-progbar" method="post">
            <div class="form-group">
                <label class="col-md-2 control-label">{t}minimales Loglevel:{/t}</label>
                <div class="col-md-10">
                    <select name="min_level" class="form-control selectpicker" data-live-search="true">
                        <option value="0" {if $min_level == 0}selected{/if}>Emergency</option>
                        <option value="1" {if $min_level == 1}selected{/if}>Alert</option>
                        <option value="2" {if $min_level == 2}selected{/if}>Critical</option>
                        <option value="3" {if $min_level == 3}selected{/if}>Error</option>
                        <option value="4" {if $min_level == 4}selected{/if}>Warning</option>
                        <option value="5" {if $min_level == 5}selected{/if}>Notice</option>
                        <option value="6" {if $min_level == 6}selected{/if}>Info</option>
                        <option value="7" {if $min_level == 7}selected{/if}>Debug</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">{t}Benutzer:{/t}</label>
                <div class="col-md-10">
                    <select name="filter_user" class="form-control selectpicker" data-live-search="true">
                        <option value="-1">{t}Kein Filter{/t}</option>
                        <optgroup label="{t}Benutzer{/t}">
                            {$user_list nofilter}
                        </optgroup>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">{t}Typ:{/t}</label>
                <div class="col-md-10">
                    <select name="filter_type" class="form-control selectpicker" data-live-search="true">
                        <option value="-1">{t}Kein Filter{/t}</option>
                        <optgroup label="{t}Typ{/t}">
                            {foreach $types_loop as $type}
                                <option value="{$type.id}" {if $filter_type == {$type.id}}selected{/if}>{$type.text}</option>
                            {/foreach}
                        </optgroup>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">{t}Suche in Kommentaren:{/t}</label>
                <div class="col-md-10">
                    <input type="search" value="{$search}" name="search" class="form-control">
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">{t}Zieltyp:{/t}</label>
                <div class="col-md-4">
                    <select name="target_type" class="form-control selectpicker" data-live-search="true">
                        <option value="-1">{t}Kein Filter{/t}</option>
                        <optgroup label="{t}Typ{/t}">
                            <option value="1" {if $target_type == 1}selected{/if}>{t}Benutzer{/t}</option>
                            <option value="2" {if $target_type == 2}selected{/if}>{t}Dateianhang{/t}</option>
                            <option value="3" {if $target_type == 3}selected{/if}>{t}Dateityp{/t}</option>
                            <option value="4" {if $target_type == 4}selected{/if}>{t}Kategorie{/t}</option>
                            <option value="5" {if $target_type == 5}selected{/if}>{t}Baugruppe{/t}</option>
                            <option value="6" {if $target_type == 6}selected{/if}>{t}Baugruppenteil{/t}</option>
                            <option value="7" {if $target_type == 7}selected{/if}>{t}Footprint{/t}</option>
                            <option value="8" {if $target_type == 8}selected{/if}>{t}Benutzergruppe{/t}</option>
                            <option value="9" {if $target_type == 9}selected{/if}>{t}Hersteller{/t}</option>
                            <option value="10" {if $target_type == 10}selected{/if}>{t}Bauteil{/t}</option>
                            <option value="11" {if $target_type == 11}selected{/if}>{t}Lagerort{/t}</option>
                            <option value="12" {if $target_type == 12}selected{/if}>{t}Lieferant{/t}</option>
                        </optgroup>
                    </select>
                </div>
                <label class="col-md-2 control-label">{t}Ziel ID:{/t}</label>
                <div class="col-md-4">
                    <input type="number" class="form-control" name="target_id" value="{if $target_id >0}{$target_id}{/if}" min="0">
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <button class="btn btn-primary">{t}Aktualisieren{/t}</button>
                </div>
            </div>
        </form>
    </div>
</div>

<form method="get">
    <input type="hidden" name="page" value="1">

    {include "../smarty_pagination.tpl"}
</form>

<div class="panel panel-primary">
    <div class="panel-heading"><i class="fas fa-crosshairs fa-fw"></i>
        {t}Eventlog{/t}
    </div>
    {include file="../smarty_eventlog.tpl"}
</div>

<form method="get">
    <input type="hidden" name="page" value="1">

    {include "../smarty_pagination.tpl"}
</form>