.class final Lcom/tencent/mm/ui/video/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/tencent/mm/ui/video/l;->hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/mm/ui/video/l;->hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->j(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method
