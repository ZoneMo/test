.class final Lcom/tencent/mm/p/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/p/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eB(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/k;->tK(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
