.class public final Lcom/tencent/mm/c/a/dd;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bOg:Lcom/tencent/mm/c/a/de;

.field public bOh:Lcom/tencent/mm/c/a/df;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/dd;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/dd;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/mm/c/a/de;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/de;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    .line 23
    new-instance v0, Lcom/tencent/mm/c/a/df;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/df;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/dd;->bOh:Lcom/tencent/mm/c/a/df;

    .line 11
    const-string v0, "LocationServer"

    iput-object v0, p0, Lcom/tencent/mm/c/a/dd;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/dd;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/dd;->gbY:Z

    return-void
.end method
