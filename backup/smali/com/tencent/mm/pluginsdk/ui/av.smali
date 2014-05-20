.class final Lcom/tencent/mm/pluginsdk/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/at;


# instance fields
.field final synthetic fmB:Lcom/tencent/mm/pluginsdk/ui/SmileyPanel;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/SmileyPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/av;->fmB:Lcom/tencent/mm/pluginsdk/ui/SmileyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ac(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/av;->fmB:Lcom/tencent/mm/pluginsdk/ui/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/SmileyPanel;->h(Lcom/tencent/mm/pluginsdk/ui/SmileyPanel;)Lcom/tencent/mm/ui/base/MMDotView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/base/MMDotView;->mY(I)V

    .line 479
    return-void
.end method
