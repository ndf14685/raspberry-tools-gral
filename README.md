# Instalación de Entorno en Raspberry Pi 3

Este repositorio contiene dos scripts para configurar un entorno de desarrollo completo en una **Raspberry Pi 3** con **Raspbian**. Los scripts instalan herramientas esenciales como Docker, Python, PHP, Node.js, npm, Terraform, Kubernetes, Git, y una base de datos SQLite con configuración predeterminada.

## Scripts Incluidos

1. **`primer_script.sh`**: Prepara el contexto necesario para la instalación de las herramientas.
2. **`tools-gral.sh`**: Instala todas las herramientas y configura el entorno de desarrollo.

## Instrucciones de Uso

### Paso 1: Preparar el Entorno

Ejecute el script `primer_script.sh` para actualizar el sistema, instalar herramientas esenciales y agregar los repositorios necesarios para Docker y Kubernetes.

```bash
chmod +x primer_script.sh
./primer_script.sh
```

### Paso 2: Instalar las Herramientas
Una vez que el entorno esté preparado, ejecute tools-gral.sh para instalar todas las herramientas.

```bash
chmod +x tools-gral.sh
./tools-gral.sh
```

### Herramientas Instaladas

- Docker: Para la contenedorización de aplicaciones.
- Python (última versión): Para el desarrollo y scripting.
- PHP: Para desarrollo backend.
- Node.js y npm: Para desarrollo frontend y gestión de paquetes.
- Terraform: Para la gestión de infraestructura como código.
- Kubernetes: Para la orquestación de contenedores.
- Git: Para el control de versiones.
- SQLite: Base de datos con configuración predeterminada.


## Requisitos Previos
- Raspberry Pi 3 con Raspbian instalado.
- Conexión a Internet para descargar paquetes y dependencias.
## Contribuir
Si deseas contribuir a este proyecto, por favor crea un fork del repositorio, realiza tus cambios y abre un pull request.

## Licencia
Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.



### Instrucciones para Versionar en GitHub

1. **Crea un nuevo repositorio en GitHub**.
2. **Inicializa el repositorio en tu Raspberry Pi**:


   ```bash
   git init
   git add .
   git commit -m "Initial commit with setup scripts and README"

3. **Conecta tu repositorio local al remoto en GitHub:

git remote add origin https://github.com/tu-usuario/nombre-del-repo.git
git branch -M main
git push -u origin main









