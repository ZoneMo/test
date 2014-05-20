.class public final Lcom/tencent/mm/c/a/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bOY:I

.field public bOZ:D

.field public bPa:D

.field public bPb:I

.field public bPc:Ljava/lang/String;

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x4010

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/c/a/ed;->bOY:I

    .line 18
    iput-wide v1, p0, Lcom/tencent/mm/c/a/ed;->bOZ:D

    .line 19
    iput-wide v1, p0, Lcom/tencent/mm/c/a/ed;->bPa:D

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mm/c/a/ed;->bPb:I

    return-void
.end method
