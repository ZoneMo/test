.class final Lcom/tencent/mm/ui/tools/jsapi/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

.field final synthetic hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/ak;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/ak;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    .line 713
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/ak;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/ak;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "share_weibo:no_weibo"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 714
    return-void
.end method
