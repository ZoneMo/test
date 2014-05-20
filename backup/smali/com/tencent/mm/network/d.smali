.class final Lcom/tencent/mm/network/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cDQ:I

.field final synthetic cDR:I

.field final synthetic cDS:[B


# direct methods
.method constructor <init>(II[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lcom/tencent/mm/network/d;->cDQ:I

    iput p2, p0, Lcom/tencent/mm/network/d;->cDR:I

    iput-object p3, p0, Lcom/tencent/mm/network/d;->cDS:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fh()Lcom/tencent/mm/network/bh;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/network/d;->cDQ:I

    iget v2, p0, Lcom/tencent/mm/network/d;->cDR:I

    iget-object v3, p0, Lcom/tencent/mm/network/d;->cDS:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/network/bh;->onNotify(II[B)V

    .line 166
    return-void
.end method
