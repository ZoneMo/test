.class final Lcom/tencent/mm/z/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cvo:Lcom/tencent/mm/model/ax;

.field final synthetic cvp:Ljava/util/List;

.field final synthetic cvq:Lcom/tencent/mm/z/n;


# direct methods
.method constructor <init>(Lcom/tencent/mm/z/n;Lcom/tencent/mm/model/ax;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/mm/z/o;->cvq:Lcom/tencent/mm/z/n;

    iput-object p2, p0, Lcom/tencent/mm/z/o;->cvo:Lcom/tencent/mm/model/ax;

    iput-object p3, p0, Lcom/tencent/mm/z/o;->cvp:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/mm/z/o;->cvo:Lcom/tencent/mm/model/ax;

    iget-object v1, p0, Lcom/tencent/mm/z/o;->cvp:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/ax;->e(Ljava/util/List;)V

    .line 139
    return-void
.end method
