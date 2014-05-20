.class public final Lcom/tencent/mm/c/a/ew;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bPF:Lcom/tencent/mm/c/a/ex;

.field public bPG:Lcom/tencent/mm/c/a/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ew;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ew;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/mm/c/a/ex;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ex;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ew;->bPF:Lcom/tencent/mm/c/a/ex;

    .line 23
    new-instance v0, Lcom/tencent/mm/c/a/ey;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ey;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ew;->bPG:Lcom/tencent/mm/c/a/ey;

    .line 10
    const-string v0, "ReaderAppOperation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ew;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ew;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ew;->gbY:Z

    return-void
.end method
