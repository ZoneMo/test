.class final Lcom/tencent/mm/ui/tools/jsapi/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/aq;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/aq;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->SM()V

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/aq;->hpL:Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/jsapi/ShareToQQWeiboUI;->finish()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
