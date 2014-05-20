.class final Lcom/tencent/mm/model/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cjk:Lcom/tencent/mm/model/cb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mm/model/cc;->cjk:Lcom/tencent/mm/model/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/model/cc;->cjk:Lcom/tencent/mm/model/cb;

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/model/cb;->a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V

    .line 54
    return-void
.end method
