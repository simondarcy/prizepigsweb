<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
{json file="https://prizepigs.ie/api/competitions_service.php" assign="json"}
{foreach from=$json.competitions item=competition name=competitions_list}
    <url>
        <loc>https://www.prizepigs.ie/competition.php?id={$competition.id}</loc>
        <changefreq>daily</changefreq>
    </url>
{/foreach} 
</urlset>
