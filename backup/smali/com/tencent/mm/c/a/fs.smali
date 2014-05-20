.class public final Lcom/tencent/mm/c/a/fs;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQm:Lcom/tencent/mm/c/a/ft;

.field public bQn:Lcom/tencent/mm/c/a/fu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/fs;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/fs;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ft;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ft;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/fs;->bQm:Lcom/tencent/mm/c/a/ft;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/fu;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/fu;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/fs;->bQn:Lcom/tencent/mm/c/a/fu;

    .line 8
    const-string v0, "SaveBankLogo"

    iput-object v0, p0, Lcom/tencent/mm/c/a/fs;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/fs;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/fs;->gbY:Z

    return-void
.end method
