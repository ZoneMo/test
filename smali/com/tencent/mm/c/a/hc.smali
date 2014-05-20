.class public final Lcom/tencent/mm/c/a/hc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bQY:Z

.field public bQZ:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/tencent/mm/c/a/hc;->bQY:Z

    .line 16
    iput-boolean v0, p0, Lcom/tencent/mm/c/a/hc;->bQZ:Z

    return-void
.end method
