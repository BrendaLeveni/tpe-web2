{include file="header.tpl"}

<h1>Lista de libros</h1>
{if $email }
<form method="POST" action="agregarLibro">
<label>Titulo</label>
<input type="text" name="titulo"/>
<label>Sinopsis</label>
<input type="text" name="sinopsis"/>
<label>Cantidad de paginas</label>
<input type="number" name="cantidad_paginas"/>
<label>Genero</label>
<select name="id_genero">
{foreach $generos as $genero}
    <option value="{$genero->id_genero}">{$genero->nombre}</option>
{/foreach}
</select>

<button type="submit">Agregar</button>
</form>
{/if}
<ul class="lista" >
{foreach $libros as $libro}
 <li ><a href="libros/{$libro->id_libro}">{$libro->titulo}</a></li>   
{/foreach}
</ul>

{include file="footer.tpl"}