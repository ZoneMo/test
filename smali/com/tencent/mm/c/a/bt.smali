.class public final Lcom/tencent/mm/c/a/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bNl:Ljava/lang/String;

.field public bNx:J

.field public bNy:Ljava/lang/String;

.field public bNz:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/tencent/mm/c/a/bt;->bNz:I

    .line 33
    iput v0, p0, Lcom/tencent/mm/c/a/bt;->type:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/c/a/bt;->bNx:J

    return-void
.end method
