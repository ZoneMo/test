.class public final Lcom/tencent/mm/c/a/x;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMl:Lcom/tencent/mm/c/a/y;

.field public bMm:Lcom/tencent/mm/c/a/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/x;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/x;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/y;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/y;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/x;->bMl:Lcom/tencent/mm/c/a/y;

    .line 22
    new-instance v0, Lcom/tencent/mm/c/a/z;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/z;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/x;->bMm:Lcom/tencent/mm/c/a/z;

    .line 8
    const-string v0, "DoFavorite"

    iput-object v0, p0, Lcom/tencent/mm/c/a/x;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/x;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/x;->gbY:Z

    return-void
.end method
