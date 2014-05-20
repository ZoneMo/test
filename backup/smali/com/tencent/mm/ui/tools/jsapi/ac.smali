.class final Lcom/tencent/mm/ui/tools/jsapi/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/w/d;


# instance fields
.field final synthetic bLB:Ljava/lang/String;

.field final synthetic bLD:Ljava/lang/String;

.field final synthetic hpC:Lcom/tencent/mm/pluginsdk/model/app/k;

.field final synthetic hpD:Ljava/lang/String;

.field final synthetic hpE:Ljava/lang/String;

.field final synthetic hpF:Ljava/lang/String;

.field final synthetic hpG:Ljava/lang/String;

.field final synthetic hpH:Landroid/app/ProgressDialog;

.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Landroid/app/ProgressDialog;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpH:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpC:Lcom/tencent/mm/pluginsdk/model/app/k;

    iput-object p4, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->bLB:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->bLD:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpD:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpE:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpF:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AC()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 2307
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpH:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpH:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2310
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpC:Lcom/tencent/mm/pluginsdk/model/app/k;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->bLB:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->bLD:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpD:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpE:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpF:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpG:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/pluginsdk/model/app/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bej:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 2312
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ac;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/ui/tools/jsapi/ao;

    move-result-object v1

    const-string v2, "send_app_msg:ok"

    invoke-static {v0, v1, v2, v7}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 2313
    return-void
.end method
