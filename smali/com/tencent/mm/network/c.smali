.class final Lcom/tencent/mm/network/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cDP:I

.field final synthetic cmA:Ljava/lang/String;

.field final synthetic cmM:[B

.field final synthetic cmy:I

.field final synthetic cmz:I


# direct methods
.method constructor <init>(IILjava/lang/String;I[B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/tencent/mm/network/c;->cmy:I

    iput p2, p0, Lcom/tencent/mm/network/c;->cmz:I

    iput-object p3, p0, Lcom/tencent/mm/network/c;->cmA:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/mm/network/c;->cDP:I

    iput-object p5, p0, Lcom/tencent/mm/network/c;->cmM:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Lcom/tencent/mm/network/bk;->Fg()Lcom/tencent/mm/network/bi;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/network/c;->cmy:I

    iget v2, p0, Lcom/tencent/mm/network/c;->cmz:I

    iget-object v3, p0, Lcom/tencent/mm/network/c;->cmA:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/network/c;->cDP:I

    iget-object v5, p0, Lcom/tencent/mm/network/c;->cmM:[B

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/network/bi;->a(IILjava/lang/String;I[B)V

    .line 140
    return-void
.end method
