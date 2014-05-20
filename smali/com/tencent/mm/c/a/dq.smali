.class public final Lcom/tencent/mm/c/a/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bOE:Z

.field public bOF:Ljava/util/List;

.field public bOG:I

.field public bOd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/tencent/mm/c/a/dq;->bOd:I

    .line 31
    iput-boolean v0, p0, Lcom/tencent/mm/c/a/dq;->bOE:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/c/a/dq;->bOG:I

    return-void
.end method
