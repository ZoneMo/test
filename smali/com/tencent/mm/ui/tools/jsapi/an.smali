.class final Lcom/tencent/mm/ui/tools/jsapi/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/r;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;)V
    .locals 0
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/an;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 973
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "doAddContact fail, contact not biz"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/an;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/an;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    const-string v2, "add_contact:fail"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 975
    return-void
.end method
