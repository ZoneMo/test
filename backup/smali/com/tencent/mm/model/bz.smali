.class final Lcom/tencent/mm/model/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cjf:Lcom/tencent/mm/model/by;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/by;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tencent/mm/model/bz;->cjf:Lcom/tencent/mm/model/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tencent/mm/model/bz;->cjf:Lcom/tencent/mm/model/by;

    iget-object v0, v0, Lcom/tencent/mm/model/by;->cjd:Lcom/tencent/mm/model/ca;

    invoke-interface {v0}, Lcom/tencent/mm/model/ca;->uW()V

    .line 366
    return-void
.end method
