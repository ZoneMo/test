.class public final Lcom/tencent/mm/c/a/ak;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMA:Lcom/tencent/mm/c/a/am;

.field public bMz:Lcom/tencent/mm/c/a/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ak;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ak;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/al;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/al;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ak;->bMz:Lcom/tencent/mm/c/a/al;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/am;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/am;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ak;->bMA:Lcom/tencent/mm/c/a/am;

    .line 8
    const-string v0, "ExtGetSnsData"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ak;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ak;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ak;->gbY:Z

    return-void
.end method
