# Crear una alerta de spread

**URL** : `/api/v1/spread_alerts`

**Método** : `POST`

## Solicitud

**Ejemplo:**

```json
{
  "spread_alert": {
    "market_id": "BTC-CLP",
    "spread": 304886.0
  }
}
```

|Parametro|Tipo|Descripcion |
| --      | -- |     --     |
| market_id | `string` | Par de monedas disponibles en la [Api publica de Buda](https://api.buda.com/#rest-api-llamadas-publicas-mercados)
|spread     | `float`  | Monto en decimal del spread del mercado

## Respuesta exitosa

**Code** : `201 CREATED`

**Ejemplo:**

```json
{
  "market_id": "BTC-CLP",
  "spread": "304886.0",
  "created_at": "2024-05-15T01:42:18.400Z",
  "updated_at": "2024-05-15T01:42:18.400Z"
}
```
