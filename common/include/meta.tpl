    <title>{if $_HTML_HEADER.title_original != NULL}{$_HTML_HEADER.title_original}{else}{if $_HTML_HEADER.title != NULL}{$_HTML_HEADER.title} | {/if}{$_HTML_HEADER_DEFAULT.title}{/if}</title>
    <meta name="keywords" content="{if $_HTML_HEADER.keyword|default:""}{$_HTML_HEADER.keyword|default:""},{/if}{$_HTML_HEADER_DEFAULT.keyword|default:""}">
    <meta name="description" content="{$_HTML_HEADER.description|default:""}{$_HTML_HEADER_DEFAULT.description|default:""}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/common/favicon/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/common/favicon/favicon.ico" type="image/vnd.microsoft.icon">
    <link rel="apple-touch-icon" href="/common/favicon/apple-touch-icon.png">