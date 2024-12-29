use Ecommerce;

SELECT 
    c.idCliente,
    c.Fname,
    COUNT(p.idPOproduct) AS productOrder
FROM 
    Clients c
LEFT JOIN 
    productOrder p
ON 
    c.idCliente = p.IdPOrder
GROUP BY 
    c.idCliente, c.Fname
ORDER BY 
    productOrder DESC;
    
    
SELECT 
    v.idSeller,
    v.SocialName AS nome_vendedor,
    f.idSupplier,
    f.SocialName AS nome_fornecedor
FROM 
    seller v
INNER JOIN 
    Supplier f
ON 
    v.SocialName = f.SocialName;



