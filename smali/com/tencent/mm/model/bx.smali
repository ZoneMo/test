.class final Lcom/tencent/mm/model/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cje:Lcom/tencent/mm/model/bw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/tencent/mm/model/bx;->cje:Lcom/tencent/mm/model/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tencent/mm/model/bx;->cje:Lcom/tencent/mm/model/bw;

    iget-object v0, v0, Lcom/tencent/mm/model/bw;->cjd:Lcom/tencent/mm/model/ca;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/tencent/mm/model/bx;->cje:Lcom/tencent/mm/model/bw;

    iget-object v0, v0, Lcom/tencent/mm/model/bw;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v0}, Lcom/tencent/mm/model/ca;->uW()V

    .line 262
    :cond_0
    return-void
.end method
