.class final Lcom/tencent/mm/ui/tools/jsapi/k;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic hpi:Lcom/tencent/mm/ui/tools/jsapi/j;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/j;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/k;->hpi:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/k;->hpi:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/j;->a(Lcom/tencent/mm/ui/tools/jsapi/j;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/k;->hpi:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->b(Lcom/tencent/mm/ui/tools/jsapi/j;)V

    goto :goto_0

    .line 66
    :pswitch_1
    const-string v0, "MicroMsg.JsApiHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handle msg from wx done, msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
