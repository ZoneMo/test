.class public final Lcom/tencent/mm/c/a/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bRA:Z

.field public bRB:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/tencent/mm/c/a/ic;->type:I

    .line 37
    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ic;->bRA:Z

    .line 38
    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ic;->bRB:Z

    return-void
.end method
