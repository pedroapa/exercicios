USE hamburgueria;
SELECT 
    b.nome,
    b.preco,
    bi.quantidade,
    u.descricao AS unidade,
    i.nome AS ingrediente,
    ti.descricao AS tipo
FROM
    burguer b
        INNER JOIN
    burguer_ingrediente bi ON bi.burguer_id = b.id
        INNER JOIN
    ingrediente i ON bi.ingrediente_id = i.id
        INNER JOIN
    unidade u ON bi.unidade_id = u.id
        INNER JOIN
    tipo_ingrediente ti ON i.tipo_ingrediente_id = ti.id
ORDER BY b.preco , b.nome , ti.id , i.nome;