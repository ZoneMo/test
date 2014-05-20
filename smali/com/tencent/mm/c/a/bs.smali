.class public final Lcom/tencent/mm/c/a/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bNw:I

.field public bNx:J

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/c/a/bs;->bNw:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/c/a/bs;->bNx:J

    return-void
.end method
