.class final Lcom/tencent/mm/ui/tools/gu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gu;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gu;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->y(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    .line 2008
    const/4 v0, 0x1

    return v0
.end method
