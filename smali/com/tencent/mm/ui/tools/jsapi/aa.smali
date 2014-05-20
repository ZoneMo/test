.class final Lcom/tencent/mm/ui/tools/jsapi/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hpD:Ljava/lang/String;

.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/aa;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/aa;->hpD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    .line 2298
    invoke-static {}, Lcom/tencent/mm/w/ag;->AZ()Lcom/tencent/mm/w/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/aa;->hpD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/a;->fQ(Ljava/lang/String;)V

    .line 2299
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/aa;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/aa;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    const-string v2, "send_app_msg:cancel"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2300
    return-void
.end method
