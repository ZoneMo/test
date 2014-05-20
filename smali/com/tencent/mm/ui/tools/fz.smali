.class public final Lcom/tencent/mm/ui/tools/fz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hmD:Lcom/tencent/mm/ag/e;


# direct methods
.method public static a(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Lcom/tencent/mm/plugin/webview/stub/al;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    new-instance v0, Lcom/tencent/mm/ui/tools/ga;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/ga;-><init>()V

    .line 16
    iput-object p1, v0, Lcom/tencent/mm/ui/tools/ga;->hmE:Lcom/tencent/mm/protocal/JsapiPermissionWrapper;

    .line 17
    iput-object p2, v0, Lcom/tencent/mm/ui/tools/ga;->hmF:Lcom/tencent/mm/protocal/GeneralControlWrapper;

    .line 19
    sget-object v1, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/mm/ag/e;

    invoke-direct {v1}, Lcom/tencent/mm/ag/e;-><init>()V

    sput-object v1, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    :cond_0
    sget-object v1, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    invoke-static {p0, v0, p3}, Lcom/tencent/mm/ag/e;->b(Ljava/lang/String;Lcom/tencent/mm/ag/f;Lcom/tencent/mm/plugin/webview/stub/al;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Lcom/tencent/mm/plugin/webview/stub/al;)Lcom/tencent/mm/ui/tools/ga;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/tencent/mm/ag/e;

    invoke-direct {v0}, Lcom/tencent/mm/ag/e;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    .line 35
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/tools/ga;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/ga;-><init>()V

    .line 36
    sget-object v1, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    invoke-static {p0, v0, p1}, Lcom/tencent/mm/ag/e;->a(Ljava/lang/String;Lcom/tencent/mm/ag/f;Lcom/tencent/mm/plugin/webview/stub/al;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Lcom/tencent/mm/plugin/webview/stub/al;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/tencent/mm/ag/e;

    invoke-direct {v0}, Lcom/tencent/mm/ag/e;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    .line 47
    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/tools/fz;->hmD:Lcom/tencent/mm/ag/e;

    invoke-static {p0, p1}, Lcom/tencent/mm/ag/e;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/webview/stub/al;)Z

    move-result v0

    return v0
.end method
