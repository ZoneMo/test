.class final Lcom/tencent/mm/ui/chatting/lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cc;


# instance fields
.field final synthetic gRh:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/lc;->gRh:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/base/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/lc;->gRh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    invoke-virtual {p1, v0}, Lcom/tencent/mm/ui/base/bx;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 547
    :cond_0
    return-void
.end method
