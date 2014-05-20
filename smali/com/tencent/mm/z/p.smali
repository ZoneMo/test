.class final Lcom/tencent/mm/z/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctu:Lcom/tencent/mm/storage/ak;

.field final synthetic cvq:Lcom/tencent/mm/z/n;

.field final synthetic cvr:Lcom/tencent/mm/model/ax;


# direct methods
.method constructor <init>(Lcom/tencent/mm/z/n;Lcom/tencent/mm/model/ax;Lcom/tencent/mm/storage/ak;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/tencent/mm/z/p;->cvq:Lcom/tencent/mm/z/n;

    iput-object p2, p0, Lcom/tencent/mm/z/p;->cvr:Lcom/tencent/mm/model/ax;

    iput-object p3, p0, Lcom/tencent/mm/z/p;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/mm/z/p;->cvr:Lcom/tencent/mm/model/ax;

    iget-object v1, p0, Lcom/tencent/mm/z/p;->ctu:Lcom/tencent/mm/storage/ak;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/ax;->b(Lcom/tencent/mm/storage/ak;)V

    .line 179
    return-void
.end method
