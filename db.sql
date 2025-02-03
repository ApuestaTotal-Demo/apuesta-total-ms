-- BD: at-cuentas
CREATE TABLE cuentas (
    id UUID PRIMARY KEY,
    usuario_id UUID NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--select * from cuentas;

-- BD: at-transacciones
CREATE TYPE tipo_transaccion AS ENUM ('deposito', 'retiro', 'compra');

CREATE TABLE transacciones (
    id UUID PRIMARY KEY,
    usuario_id UUID NOT NULL,
    tipo tipo_transaccion NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--select * from transacciones;

-- BD: at-compras
CREATE TYPE compra_estado AS ENUM ('pendiente', 'completada', 'compensada');

CREATE TABLE compras (
    id UUID PRIMARY KEY,
    usuario_id UUID NOT NULL,
    producto_id UUID NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    estado compra_estado NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--select c.* from compras c;