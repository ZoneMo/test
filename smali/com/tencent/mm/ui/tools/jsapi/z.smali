.class final Lcom/tencent/mm/ui/tools/jsapi/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/ui/applet/r;


# instance fields
.field final synthetic bLB:Ljava/lang/String;

.field final synthetic bLD:Ljava/lang/String;

.field final synthetic hpC:Lcom/tencent/mm/pluginsdk/model/app/k;

.field final synthetic hpD:Ljava/lang/String;

.field final synthetic hpE:Ljava/lang/String;

.field final synthetic hpF:Ljava/lang/String;

.field final synthetic hpG:Ljava/lang/String;

.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpC:Lcom/tencent/mm/pluginsdk/model/app/k;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->bLB:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->bLD:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpD:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpE:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpF:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 2268
    if-eqz p1, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpC:Lcom/tencent/mm/pluginsdk/model/app/k;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->bLB:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->bLD:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpD:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpE:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpF:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpG:Ljava/lang/String;

    move-object v7, p2

    invoke-static/range {v0 .. v8}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->beq:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 2272
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    const-string v2, "send_app_msg:ok"

    invoke-static {v0, v1, v2, v9}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2276
    :goto_0
    return-void

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/z;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    const-string v2, "send_app_msg:cancel"

    invoke-static {v0, v1, v2, v9}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
