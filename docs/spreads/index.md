# Listar los spreads para todos los mercados

**URL** : `/api/v1/spreads`

**Método** : `GET`

## Respuesta exitosa

**Code** : `200 OK`

**Ejemplo:**
```json
{
  "spreads": [
    {
      "market_id": "BTC-CLP",
      "spread": "241589.0"
    },
    {
      "market_id": "BTC-COP",
      "spread": "0.01"
    },
    {
      "market_id": "ETH-CLP",
      "spread": "23618.26"
    },
  ]
}
```
