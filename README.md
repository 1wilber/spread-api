# Spread Api
## Endpoints
Los endpoints no requieren autenticación.

### Spreads
Endpoint para obtener todos los spreads

* [Ver spread de todos los mercados](./docs/spreads/index.md) : `GET /api/v1/spreads`

### Spread Alerts
Endpoint para obtener y manipular las alertas de los spread.

* [Ver todas las alertas](./docs/spread_alerts/index.md) : `GET /api/v1/spread_alerts`
* [Ver una alerta](./docs/spread_alerts/show.md) : `GET /api/v1/spread_alerts/:market_id`
* [Chequear estado de una alerta](./docs/spread_alerts/check.md) : `GET /api/v1/spread_alerts/:market_id/check` (polling)
* [Crear una alerta](./docs/spread_alerts/create.md) : `POST /api/v1/spread_alerts`
* [Actualizar una alerta](./docs/spread_alerts/update.md) : `PUT /api/v1/spread_alerts/:market_id`
* [Eliminar una alerta](./docs/spread_alerts/destroy.md) : `DELETE /api/v1/spread_alerts/:market_id`
