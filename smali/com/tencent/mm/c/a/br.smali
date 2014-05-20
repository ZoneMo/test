.class public final Lcom/tencent/mm/c/a/br;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNu:Lcom/tencent/mm/c/a/bs;

.field public bNv:Lcom/tencent/mm/c/a/bt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/br;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/br;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 21
    new-instance v0, Lcom/tencent/mm/c/a/bs;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bs;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/br;->bNu:Lcom/tencent/mm/c/a/bs;

    .line 28
    new-instance v0, Lcom/tencent/mm/c/a/bt;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bt;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/br;->bNv:Lcom/tencent/mm/c/a/bt;

    .line 16
    const-string v0, "FMsgInfoQuery"

    iput-object v0, p0, Lcom/tencent/mm/c/a/br;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/br;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/br;->gbY:Z

    return-void
.end method
