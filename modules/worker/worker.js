export default {
    async fetch(request, env) {
        if(request.method === "GET") {
            return new Response(
                JSON.stringify({
                    mensaje: "Hola desde Cloudflare con Terraform",
                    metodo: request.method,
                    fecha: new Date().toISOString(),
                }),
                {headers: {"content-type": "application/json"} }
            );
        }
        return new Response("Método no permitido", {status: 405});
    },
};