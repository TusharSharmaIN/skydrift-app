class CloudTypeCopy {
  const CloudTypeCopy._();

  static String englishNameOf(String cloudType) {
    final key = cloudType.trim().toLowerCase();
    return _englishNames[key] ?? 'Cloud in this photo';
  }

  static String shortMeaningOf(String cloudType) {
    final key = cloudType.trim().toLowerCase();
    return _short[key] ?? 'A cloud formation from this photo.';
  }

  static const Map<String, String> _englishNames = {
    'cumulus humilis': 'Fair-weather puffs',
    'cumulus mediocris': 'Puffy clouds',
    'cumulus congestus': 'Towering puffs',
    'cumulonimbus': 'Thundercloud',
    'stratus': 'Low grey sheet',
    'stratocumulus': 'Lumpy low layer',
    'nimbostratus': 'Rain layer',
    'altostratus': 'Mid-level veil',
    'altocumulus': 'Mid-level heaps',
    'cirrus': 'High wisps',
    'cirrostratus': 'High milky veil',
    'cirrocumulus': 'Mackerel sky',
  };

  static const Map<String, String> _short = {
    'cumulus humilis': 'Small, puffy fair-weather clouds.',
    'cumulus mediocris': 'Puffy clouds with a bit more height.',
    'cumulus congestus': 'Tall heaps. Short showers possible.',
    'cumulonimbus': 'A deep storm cloud.',
    'stratus': 'A low, featureless grey sheet.',
    'stratocumulus': 'Low lumpy layers or rolls.',
    'nimbostratus': 'A thick layer that often means steady rain.',
    'altostratus': 'A mid-level grey veil over the sun.',
    'altocumulus': 'Mid-level white or grey heaps, often in rows.',
    'cirrus': 'High, thin ice-crystal streaks.',
    'cirrostratus': 'A high milky veil, sometimes with a halo.',
    'cirrocumulus': 'High tiny ripples.',
  };
}
